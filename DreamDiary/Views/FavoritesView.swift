//
//  FavoritesView.swift
//  DreamDiary
//
//  Created by Saad El Maliki on 20/06/25.
//

import SwiftUI
import SwiftData

struct FavoritesView: View {
    @Environment(\.modelContext) private var context
    @Query(filter: #Predicate<Dream> { $0.isFavorite }) private var favorites: [Dream]

    var body: some View {
        List {
            ForEach(favorites) { dream in
                NavigationLink(destination: DreamDetailView(dream: dream)) {
                    VStack(alignment: .leading) {
                        DreamListItem(dream: dream)
                    }
                }
            }
            .onDelete(perform: delete)
        }
        .navigationTitle("Preferiti")
    }

    private func delete(at offsets: IndexSet) {
        for index in offsets {
            context.delete(favorites[index])
        }
    }
}

#Preview("FavoritesView Preview") {
    FavoritesView()
        .modelContainer(PreviewData.makeModelContainer())
}
