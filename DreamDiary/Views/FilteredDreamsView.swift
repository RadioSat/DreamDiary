//
//  FilteredDreamsView.swift
//  DreamDiary
//
//  Created by Saad El Maliki on 20/06/25.
//


import SwiftUI
import SwiftData

struct FilteredDreamsView: View {
    @Environment(\.modelContext) private var context
    @Query private var dreams: [Dream]

    @State private var searchText = ""
    @State private var startDate = Calendar.current.date(byAdding: .month, value: -1, to: Date()) ?? Date()
    @State private var endDate = Date()
    @State private var useDateFilter = false
    @State private var showOnlyNightmares = false
    @State private var showOnlyFavorites = false

    var filteredDreams: [Dream] {
        let endOfDay = Calendar.current.date(bySettingHour: 23, minute: 59, second: 59, of: endDate) ?? endDate
        return dreams.filter {
            (searchText.isEmpty || $0.title.localizedCaseInsensitiveContains(searchText) || $0.content.localizedCaseInsensitiveContains(searchText)) &&
            (!useDateFilter || ($0.date >= startDate && $0.date <= endOfDay)) &&
            (!showOnlyNightmares || $0.isNightmare) &&
            (!showOnlyFavorites || $0.isFavorite)
        }
    }

    var body: some View {
        NavigationStack {
            List {
                ForEach(filteredDreams) { dream in
                    NavigationLink(destination: DreamDetailView(dream: dream)) {
                        DreamListItem(dream: dream)
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Filtra Sogni")
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Cerca nei sogni")
            .safeAreaInset(edge: .top) {
                VStack(spacing: 4) {
                    Toggle("Solo incubi", isOn: $showOnlyNightmares)
                        .padding(.horizontal)
                    Toggle("Solo preferiti", isOn: $showOnlyFavorites)
                        .padding(.horizontal)
                    Toggle("Filtra per periodo", isOn: $useDateFilter)
                        .padding(.horizontal)
                    if useDateFilter {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Da:").font(.caption).padding(.horizontal)
                            DatePicker("", selection: $startDate, displayedComponents: .date)
                                .labelsHidden()
                                .padding(.horizontal)
                            Text("A:").font(.caption).padding(.horizontal)
                            DatePicker("", selection: $endDate, displayedComponents: .date)
                                .labelsHidden()
                                .padding(.horizontal)
                        }
                    }
                    Button("Reset filtri") {
                        searchText = ""
                        useDateFilter = false
                        showOnlyFavorites = false
                        showOnlyNightmares = false
                        startDate = Calendar.current.date(byAdding: .month, value: -1, to: Date()) ?? Date()
                        endDate = Date()
                    }
                    .padding(.top, 4)
                    .foregroundColor(.blue)
                }
                .background(.ultraThinMaterial)
            }
        }
    }
}

#Preview("FilteredDreamsView Preview") {
    FilteredDreamsView()
        .modelContainer(PreviewData.makeModelContainer())
}
