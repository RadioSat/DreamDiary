//
//  DreamDetailView.swift
//  DreamDiary
//
//  Created by Saad El Maliki on 20/06/25.
//

import SwiftUI

struct DreamDetailView: View {
    @Environment(\.modelContext) private var context
    @State private var isEditing = false

    @Bindable var dream: Dream

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text(dream.title)
                    .font(.largeTitle)
                    .bold()

                Text(dream.date.formatted(date: .long, time: .omitted))
                    .font(.caption)
                    .foregroundStyle(.gray)

                if dream.isNightmare {
                    Label("Incubo", systemImage: "moon.zzz.fill")
                        .font(.caption2)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(Color.red.opacity(0.1))
                        .foregroundColor(.red)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                }

                if dream.isFavorite {
                    Label("Preferito", systemImage: "heart.fill")
                        .font(.caption2)
                        .foregroundColor(.red)
                }

                Divider()

                Text(dream.content)
                    .font(.body)
                    .fixedSize(horizontal: false, vertical: true)

                Spacer(minLength: 40)
            }
            .padding()
        }
        .navigationTitle("Dettagli")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                NavigationLink(destination: DreamFormView(dream: dream, isNew: false)) {
                    Text("Modifica")
                }
                Button {
                    dream.isFavorite.toggle()
                } label: {
                    Image(systemName: dream.isFavorite ? "heart.fill" : "heart")
                        .foregroundColor(.red)
                }
            }
        }
        .background(Color(.systemGroupedBackground))
    }
}

#Preview("DreamDetailView Preview") {
    NavigationStack {
        DreamDetailView(dream: PreviewData.sampleDreams.first!)
    }
    .modelContainer(PreviewData.makeModelContainer())
}
