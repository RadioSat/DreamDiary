//
//  DreamDiaryApp.swift
//  DreamDiary
//
//  Created by Saad El Maliki on 19/06/25.
//

import SwiftUI
import SwiftData

@main
struct DreamDiaryApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Dream.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Dream.self, onSetup: { result in
            if case let .success(container) = result {
                Task {
                    let context = container.mainContext
                    let fetchDescriptor = FetchDescriptor<Dream>()
                    let existing = (try? context.fetch(fetchDescriptor)) ?? []

                    guard existing.isEmpty else { return }

                    for dream in PreviewData.sampleDreams {
                        context.insert(dream)
                    }

                    try? context.save()
                }
            }
        })
    }
}
