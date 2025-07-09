//
//  ChartData.swift
//  DreamDiary
//
//  Created by Saad El Maliki on 08/07/25.
//

import Foundation

enum DreamType: String {
    case normal = "Sogno"
    case nightmare = "Incubo"
}

enum TimeRange: String, CaseIterable {
    case week = "Settimana"
    case month = "Mese"
    case halfYear = "Semestre"
    
    var calendarComponent: Calendar.Component {
        switch self {
        case .week: return .weekOfYear
        case .month: return .month
        case .halfYear: return .month
        }
    }
    
    var label: String { self.rawValue }
    
    var maxOffset: Int {
        switch self {
        case .week: return 52
        case .month: return 48
        case .halfYear: return 36
        }
    }
}

struct ChartEntry: Identifiable {
    let id = UUID()
    let label: String
    let count: Int
    let type: String
    let sortDate: Date
}

struct PieChartEntry {
    let type: String
    let count: Int
}

struct ChartDataProcessor {
    static func processData(dreams: [Dream], range: TimeRange) async -> [ChartEntry] {
        return await withCheckedContinuation { continuation in
            Task.detached(priority: .userInitiated) {
                let calendar = Calendar.current
                let formatter = DateFormatter()
                
                let groupedDreams = Dictionary(grouping: dreams) { dream -> String in
                    switch range {
                    case .week:
                        formatter.dateFormat = "EEE"
                        return formatter.string(from: dream.date)
                    case .month:
                        let dayOfMonth = calendar.component(.day, from: dream.date)
                        if dayOfMonth <= 7 { return "Sett. 1" }
                        if dayOfMonth <= 14 { return "Sett. 2" }
                        if dayOfMonth <= 21 { return "Sett. 3" }
                        return "Sett. 4"
                    case .halfYear:
                        formatter.dateFormat = "MMM"
                        return formatter.string(from: dream.date)
                    }
                }
                
                var entries: [ChartEntry] = []
                
                for (period, dreamsInPeriod) in groupedDreams {
                    let nightmares = dreamsInPeriod.filter(\.isNightmare)
                    let normalDreams = dreamsInPeriod.filter { !$0.isNightmare }
                    let sortDate = dreamsInPeriod.first?.date ?? Date()
                    
                    if !normalDreams.isEmpty {
                        entries.append(ChartEntry(
                            label: period,
                            count: normalDreams.count,
                            type: DreamType.normal.rawValue,
                            sortDate: sortDate
                        ))
                    }
                    
                    if !nightmares.isEmpty {
                        entries.append(ChartEntry(
                            label: period,
                            count: nightmares.count,
                            type: DreamType.nightmare.rawValue,
                            sortDate: sortDate
                        ))
                    }
                }
                
                let sortedEntries = entries.sorted { $0.sortDate < $1.sortDate }
                continuation.resume(returning: sortedEntries)
            }
        }
    }
}

struct PieChartDataProcessor {
    static func processData(dreams: [Dream]) async -> [PieChartEntry] {
        return await withCheckedContinuation { continuation in
            Task.detached(priority: .userInitiated) {
                let nightmares = dreams.filter(\.isNightmare).count
                let normalDreams = dreams.count - nightmares
                
                let entries = [
                    PieChartEntry(type: DreamType.normal.rawValue, count: normalDreams),
                    PieChartEntry(type: DreamType.nightmare.rawValue, count: nightmares)
                ]
                
                continuation.resume(returning: entries)
            }
        }
    }
}
