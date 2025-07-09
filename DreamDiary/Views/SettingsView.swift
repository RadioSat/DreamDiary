//
//  SettingsView.swift
//  DreamDiary
//
//  Created by Saad El Maliki on 20/06/25.
//

import SwiftUI
import UserNotifications

struct SettingsView: View {
    @AppStorage("selectedColorScheme") private var selectedColorScheme: String = "system"
    @AppStorage("notificationHour") private var notificationHour: Int = 8
    @AppStorage("notificationMinute") private var notificationMinute: Int = 0
    @AppStorage("notificationsEnabled") private var notificationsEnabled: Bool = true
    @AppStorage("authenticationEnabled") private var authenticationEnabled: Bool = false
    
    @State private var time = Date()

    var body: some View {
        Form {
            Section(header: Text("Tema")) {
                Picker("Tema", selection: $selectedColorScheme) {
                    Text("Sistema").tag("system")
                    Text("Chiaro").tag("light")
                    Text("Scuro").tag("dark")
                }
                .pickerStyle(.segmented)
            }
            Section(header: Text("Promemoria giornaliero")) {
                Toggle("Abilita notifica", isOn: $notificationsEnabled)
                if notificationsEnabled {
                    DatePicker("Orario", selection: $time, displayedComponents: .hourAndMinute)
                }
            }
            Section(header: Text("Privacy")) {
                Toggle("Richiedi Face ID all'avvio", isOn: $authenticationEnabled)
            }
        }
        .onAppear {
            var components = DateComponents()
            components.hour = notificationHour
            components.minute = notificationMinute
            time = Calendar.current.date(from: components) ?? Date()
        }
        .onChange(of: time) {
            if notificationsEnabled {
                scheduleNotification(for: time)
            }
        }
        .onChange(of: notificationsEnabled) {
            if notificationsEnabled {
                scheduleNotification(for: time)
            } else {
                UNUserNotificationCenter.current().removePendingNotificationRequests(withIdentifiers: ["dailyDreamReminder"])
            }
        }
        .navigationTitle("Impostazioni")
    }

    private func scheduleNotification(for date: Date) {
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert, .sound]) { granted, _ in
            guard granted else { return }

            let content = UNMutableNotificationContent()
            content.title = "Scrivi i tuoi sogni!"
            content.body = "Hai fatto un sogno? Apri l'app e annotalo."
            content.sound = .default

            let calendar = Calendar.current
            let components = calendar.dateComponents([.hour, .minute], from: date)

            let trigger = UNCalendarNotificationTrigger(dateMatching: components, repeats: true)

            let request = UNNotificationRequest(identifier: "dailyDreamReminder", content: content, trigger: trigger)

            center.removePendingNotificationRequests(withIdentifiers: ["dailyDreamReminder"])
            center.add(request)

            notificationHour = components.hour ?? 8
            notificationMinute = components.minute ?? 0
        }
    }
}

#Preview("SettingsView Preview") {
    NavigationStack {
        SettingsView()
    }
}
