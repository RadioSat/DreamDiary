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
    @Query(sort: \Dream.date, order: .reverse)
    private var dreams: [Dream]
    
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
            .listStyle(.insetGrouped)
            .navigationTitle("I tuoi sogni")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    NavigationLink(destination: FilteredDreamsView()) {
                        Image(systemName: "line.3.horizontal.decrease.circle")
                    }
                    NavigationLink(destination: DreamFormView(dream: Dream(title: "", content: ""), isNew: true)) {
                        Image(systemName: "plus")
                    }
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
