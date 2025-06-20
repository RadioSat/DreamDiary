//
//  DreamListView.swift
//  DreamDiary
//
//  Created by Saad El Maliki on 20/06/25.
//

import SwiftUI
import SwiftData

struct DreamListView: View {
    @Environment(\.modelContext) private var context
    @Query private var dreams: [Dream]

    var body: some View {
        NavigationStack {
            List {
                ForEach(dreams) { dream in
                    NavigationLink(destination: DreamDetailView(dream: dream)) {
                        VStack(alignment: .leading) {
                            DreamListItem(dream: dream)
                        }
                    }
                }
                .onDelete(perform: deleteDreams)
            }
            .navigationTitle("I tuoi sogni")
            .toolbar {
                NavigationLink(destination: DreamFormView(dream: Dream(title: "", content: ""), isNew: true)) {
                    Image(systemName: "plus")
                }
                NavigationLink(destination:
                FavoritesView()) {
                    Image(systemName: "heart.fill")
                }
            }
        }
    }

    private func deleteDreams(at offsets: IndexSet) {
        for index in offsets {
            context.delete(dreams[index])
        }
    }
}

#Preview("DreamListView Preview") {
    DreamListView()
        .modelContainer(PreviewData.makeModelContainer())
}
