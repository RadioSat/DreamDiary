//
//  DateRangeCalculator.swift
//  DreamDiary
//
//  Created by Saad El Maliki on 08/07/25.
//

import Foundation

struct DateRangeCalculator {
    let range: TimeRange
    let offset: Int
    private let calendar = Calendar.current
    private let now = Date()

    private var referenceDate: Date {
        return calendar.date(byAdding: range.calendarComponent, value: offset, to: now) ?? now
    }

    var dateRange: (start: Date, end: Date) {
        switch range {
        case .week, .month:
            guard let interval = calendar.dateInterval(of: range.calendarComponent, for: referenceDate),
                  let endDate = calendar.date(byAdding: .second, value: -1, to: interval.end) else {
                return (now, now)
            }
            return (interval.start, endDate)
        case .halfYear:
            guard let endOfMonthInterval = calendar.dateInterval(of: .month, for: referenceDate),
                  let endDate = calendar.date(byAdding: .second, value: -1, to: endOfMonthInterval.end) else {
                return (now, now)
            }
            
            guard let startMonthDate = calendar.date(byAdding: .month, value: -5, to: referenceDate),
                  let startOfMonthInterval = calendar.dateInterval(of: .month, for: startMonthDate) else {
                return (now, now)
            }
            
            return (startOfMonthInterval.start, endDate)
        }
    }

    var displayDescription: String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "it_IT")

        switch range {
        case .week:
            let startOfWeek = dateRange.start
            let endOfWeek = dateRange.end
            formatter.dateFormat = "d MMM"
            return "\(formatter.string(from: startOfWeek)) - \(formatter.string(from: endOfWeek))"
        case .month:
            formatter.dateFormat = "MMMM yyyy"
            return formatter.string(from: referenceDate).capitalized
        case .halfYear:
            let (startDate, endDate) = dateRange
            let startYear = calendar.component(.year, from: startDate)
            let endYear = calendar.component(.year, from: endDate)
            
            if startYear == endYear {
                formatter.dateFormat = "MMM"
                let startMonthString = formatter.string(from: startDate)
                let endMonthString = formatter.string(from: endDate)
                formatter.dateFormat = "yyyy"
                let yearString = formatter.string(from: endDate)
                return "\(startMonthString) - \(endMonthString) \(yearString)"
            } else {
                formatter.dateFormat = "MMM yyyy"
                let startString = formatter.string(from: startDate)
                let endString = formatter.string(from: endDate)
                return "\(startString) - \(endString)"
            }
        }
    }
}
