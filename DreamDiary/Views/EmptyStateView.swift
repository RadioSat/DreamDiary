//
//  EmptyStateView.swift
//  DreamDiary
//
//  Created by Saad El Maliki on 08/07/25.
//
import SwiftUI

struct EmptyStateView: View {
    let message: String
    
    var body: some View {
        Text(message)
            .foregroundColor(.secondary)
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(.vertical)
    }
}
