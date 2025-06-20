//
//  SettingsView.swift
//  DreamDiary
//
//  Created by Saad El Maliki on 20/06/25.
//


import SwiftUI

struct SettingsView: View {
    @AppStorage("selectedColorScheme") private var selectedColorScheme: String = "system"

    var body: some View {
        Form {
            Picker("Tema", selection: $selectedColorScheme) {
                Text("Sistema").tag("system")
                Text("Chiaro").tag("light")
                Text("Scuro").tag("dark")
            }
            .pickerStyle(.segmented)
        }
        .navigationTitle("Impostazioni")
    }
}

#Preview("SettingsView Preview") {
    NavigationStack {
        SettingsView()
    }
}
