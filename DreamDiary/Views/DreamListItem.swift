//
//  DreamItemView.swift
//  DreamDiary
//
//  Created by Saad El Maliki on 20/06/25.
//

import SwiftUI

struct DreamListItem: View {
    let dream: Dream
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text(dream.title)
                    .font(.headline)
                    .foregroundColor(.primary)
                Spacer()
                if dream.isFavorite {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                }
            }
            Text(dream.date.formatted(date: .abbreviated, time: .shortened))
                .font(.caption)
                .foregroundStyle(.gray)
            if dream.isNightmare {
                Label("Incubo", systemImage: "moon.zzz.fill")
                    .font(.caption2)
                    .padding(.top, 2)
                    .padding(.horizontal, 6)
                    .padding(.vertical, 2)
                    .background(Color.red.opacity(0.1))
                    .foregroundColor(.red)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            }
        }
        .padding(.vertical, 8)
    }
}

#Preview("DreamItemView Preview") {
    DreamListItem(dream: PreviewData.sampleDreams.first!)
        .padding()
        .previewLayout(.sizeThatFits)
        .background(Color(.systemGroupedBackground))
}
