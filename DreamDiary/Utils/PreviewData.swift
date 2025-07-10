//
//  PreviewData.swift
//  DreamDiary
//
//  Created by Saad El Maliki on 20/06/25.
//

import Foundation
import SwiftData

enum PreviewData {
    static let sampleDreams: [Dream] = [
        Dream(
            title: "Cadere nel vuoto",
            content: "Mi trovavo su un grattacielo e all’improvviso sono cominciato a cadere nel vuoto, una sensazione terribile.",
            date: Date(timeIntervalSinceNow: -86400 * 1),
            isNightmare: true,
            isFavorite: false,
            score: -1
        ),
        Dream(
            title: "Volare sopra la città",
            content: "Ero in grado di volare liberamente sopra la mia città, vedendo tutto il panorama illuminato dalle luci notturne.",
            date: Date(timeIntervalSinceNow: -86400 * 2),
            isNightmare: false,
            isFavorite: true,
            score: 0.6
        ),
        Dream(
            title: "Inseguito da un'ombra",
            content: "Un'ombra senza forma mi inseguiva attraverso vicoli bui e stretti. Non riuscivo a seminarla.",
            date: Date(timeIntervalSinceNow: -86400 * 4),
            isNightmare: true,
            isFavorite: false,
            score: -0.8
        ),
        Dream(
            title: "Conversazione con un delfino",
            content: "Nuotavo nell'oceano e un delfino ha iniziato a parlarmi con una voce saggia e antica.",
            date: Date(timeIntervalSinceNow: -86400 * 8),
            isNightmare: false,
            isFavorite: true,
            score: 0.2
        ),
        Dream(
            title: "Perdere i denti",
            content: "Mi guardavo allo specchio e i miei denti cominciavano a cadere uno dopo l'altro.",
            date: Date(timeIntervalSinceNow: -86400 * 12),
            isNightmare: true,
            isFavorite: false,
            score: -0.4
        ),
        Dream(
            title: "Casa d'infanzia",
            content: "Sono tornato nella mia casa d'infanzia, ma tutte le stanze erano diverse e non riconoscevo nulla.",
            date: Date(timeIntervalSinceNow: -86400 * 17),
            isNightmare: false,
            isFavorite: false,
            score: 0.5
        )
    ]

    static func makeModelContainer(
        for entities: [any PersistentModel.Type] = [Dream.self],
        withSampleData: Bool = true
    ) -> ModelContainer {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let schema = Schema(entities)
        let container = try! ModelContainer(for: schema, configurations: config)

        //var scorer = Scorer()
        if withSampleData {
            let modelContext = ModelContext(container)
            for dream in sampleDreams {
                //dream.score = scorer.score(dream.content)
                modelContext.insert(dream)
            }
            try! modelContext.save()
        }

        return container
    }
}
