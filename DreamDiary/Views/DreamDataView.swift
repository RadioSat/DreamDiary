//
//  DreamDataView.swift
//  DreamDiary
//
//  Created by Saad El Maliki on 22/06/25.
//

import SwiftUI
import SwiftData
import Charts

struct DreamDataView: View {
    @Query(sort: \Dream.date, order: .reverse)
    private var dreams: [Dream]
    
    @State private var selectedRange: TimeRange = .week
    @State private var offset: Int = 0
    @State private var isLoading = false
    
    @State private var filteredDreams: [Dream] = []
    @State private var chartData: [ChartEntry] = []
    @State private var pieChartData: [PieChartEntry] = []
    @State private var favoriteCount: Int = 0
    @State private var displayDescription: String = ""
    
    private var dateCalculator: DateRangeCalculator {
        DateRangeCalculator(range: selectedRange, offset: offset)
    }
    
    private var canNavigateBackward: Bool {
        offset > -selectedRange.maxOffset
    }
    
    private var canNavigateForward: Bool {
        offset < selectedRange.maxOffset
    }
    
    var body: some View {
        NavigationStack {
            periodSelectionSection
            Form {
                if isLoading {
                    ProgressView("Caricamento...")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding()
                } else {
                    temporalChartSection
                    pieChartSection
                    favoritesSection
                }
            }
            .navigationTitle("Statistiche")
            .onAppear {
                updateData()
            }
        }
    }
}

private extension DreamDataView {
    var periodSelectionSection: some View {
        Section("Intervallo") {
            Picker("Vista", selection: $selectedRange) {
                ForEach(TimeRange.allCases, id: \.self) { range in
                    Text(range.label).tag(range)
                }
            }
            .pickerStyle(.segmented)
            .task(id: selectedRange) {
                offset = 0
                updateData()
            }
            
            HStack {
                Button(action: {
                    if canNavigateBackward {
                        offset -= 1
                        updateData()
                    }
                }) {
                    Image(systemName: "chevron.left")
                        .frame(width: 44, height: 44)
                        .contentShape(Rectangle())
                }
                .foregroundColor(canNavigateBackward ? .blue : .gray)
                .disabled(!canNavigateBackward)

                Spacer()

                Text(displayDescription)
                    .font(.headline)
                    .multilineTextAlignment(.center)

                Spacer()

                Button(action: {
                    if canNavigateForward {
                        offset += 1
                        updateData()
                    }
                }) {
                    Image(systemName: "chevron.right")
                        .frame(width: 44, height: 44)
                        .contentShape(Rectangle())
                }
                .foregroundColor(canNavigateForward ? .blue : .gray)
                .disabled(!canNavigateForward)
            }
        }
    }
    
    var temporalChartSection: some View {
        Section("Grafico temporale") {
            if chartData.isEmpty {
                EmptyStateView(message: "Nessun sogno in questo periodo")
            } else {
                Chart(chartData) { entry in
                    BarMark(
                        x: .value("Periodo", entry.label),
                        y: .value("Conteggio", entry.count)
                    )
                    .foregroundStyle(by: .value("Tipo", entry.type))
                    .annotation(position: .top, alignment: .center) {
                        Text("")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                }
                .chartForegroundStyleScale([
                    DreamType.normal.rawValue: Color.blue,
                    DreamType.nightmare.rawValue: Color.red
                ])
                .frame(height: 200)
            }
        }
    }
    
    var pieChartSection: some View {
        Section("Sogni vs Incubi") {
            if pieChartData.allSatisfy({ $0.count == 0 }) {
                EmptyStateView(message: "Nessun dato disponibile")
            } else {
                Chart(pieChartData, id: \.type) { entry in
                    SectorMark(
                        angle: .value("Quantità", entry.count),
                        innerRadius: .ratio(0.5)
                    )
                    .foregroundStyle(by: .value("Tipo", entry.type))
                    .annotation(position: .overlay) {
                        if entry.count > 0 {
                            Text("\(entry.count)")
                                .font(.caption.bold())
                                .foregroundStyle(.white)
                        }
                    }
                }
                .chartForegroundStyleScale([
                    DreamType.normal.rawValue: Color.blue,
                    DreamType.nightmare.rawValue: Color.red
                ])
                .frame(height: 200)
            }
        }
    }
    
    var favoritesSection: some View {
        Section("Preferiti") {
            Text("Sogni preferiti: \(favoriteCount)")
        }
    }
    
    private func updateData() {
        isLoading = true

        let calculator = dateCalculator
        let range = calculator.dateRange
        let description = calculator.displayDescription

        DispatchQueue.global(qos: .userInitiated).async {
            let filtered = dreams.filter { $0.date >= range.start && $0.date <= range.end }
            let favorites = filtered.filter(\.isFavorite).count

            Task {
                let chartEntries = await ChartDataProcessor.processData(dreams: filtered, range: selectedRange)
                let pieEntries = await PieChartDataProcessor.processData(dreams: filtered)

                await MainActor.run {
                    self.filteredDreams = filtered
                    self.chartData = chartEntries
                    self.pieChartData = pieEntries
                    self.favoriteCount = favorites
                    self.displayDescription = description
                    self.isLoading = false
                }
            }
        }
    }
}

#Preview("DreamDataView Preview") {
    DreamDataView()
        .modelContainer(PreviewData.makeModelContainer())
}
