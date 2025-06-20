//
//  ContentView.swift
//  DreamDiary
//
//  Created by Saad El Maliki on 19/06/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @AppStorage("selectedColorScheme") private var selectedColorScheme: String = "system"

    var resolvedColorScheme: ColorScheme? {
        switch selectedColorScheme {
        case "light": return .light
        case "dark": return .dark
        default: return nil
        }
    }

    var body: some View {
        TabView {
            NavigationStack {
                DreamListView()
            }
            .tabItem {
                Label("Sogni", systemImage: "list.clipboard")
            }

            NavigationStack {
                SettingsView()
            }
            .tabItem {
                Label("Impostazioni", systemImage: "gear")
            }
        }
        .preferredColorScheme(resolvedColorScheme)
    }
}

#Preview("ContentView Preview") {
    ContentView()
        .modelContainer(PreviewData.makeModelContainer())
}
