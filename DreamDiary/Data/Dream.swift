//
//  Dream.swift
//  DreamDiary
//
//  Created by Saad El Maliki on 20/06/25.
//

import Foundation
import SwiftData

@Model
class Dream {
    var title: String
    var content: String
    var date: Date
    var isNightmare: Bool
    var isFavorite: Bool = false
    
    init(title: String, content: String, date: Date = .now, isNightmare: Bool = false, isFavorite: Bool = false) {
        self.title = title
        self.content = content
        self.date = date
        self.isNightmare = isNightmare
        self.isFavorite = isFavorite
    }
}
