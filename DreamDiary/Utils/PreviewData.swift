//
//  PreviewData.swift
//  DreamDiary
//
//  Created by Saad El Maliki on 20/06/25.
//

import SwiftData

enum PreviewData {
    static let sampleDreams = [
        Dream(
            title: "Cadere nel vuoto",
            content: "Mi trovavo su un grattacielo e all’improvviso sono cominciato a cadere nel vuoto.",
            date: .now,
            isNightmare: true,
            isFavorite: false
        ),
        Dream(
            title: "Volare sopra la città",
            content: "Ero in grado di volare sopra la città dall'alto e vedere tutto il panorama.",
            date: .now,
            isNightmare: false,
            isFavorite: true
        )
    ]

    static func makeModelContainer(
        for entities: [any PersistentModel.Type] = [Dream.self],
        withSampleData: Bool = true
    ) -> ModelContainer {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let schema = Schema(entities)
        let container = try! ModelContainer(for: schema, configurations: config)

        if withSampleData {
            let modelContext = ModelContext(container)
            for dream in sampleDreams {
                modelContext.insert(dream)
            }
            try! modelContext.save()
        }

        return container
    }
}
