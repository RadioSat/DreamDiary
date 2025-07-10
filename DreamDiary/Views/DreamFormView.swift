//
//  DreamFormView.swift
//  DreamDiary
//
//  Created by Saad El Maliki on 20/06/25.
//

import SwiftUI
import SwiftData

struct DreamFormView: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var context

    @Bindable var dream: Dream
    
    var isNew: Bool

    @State private var showValidationError = false
    @State private var originalContent: String = ""

    var scorer = Scorer()
    
    func calculateScore(dream: Dream) {
        let score = scorer.score(dream.content)
        dream.score = score
        }
    
    
    var body: some View {
        Form {
            Section(header: Text("Dati del sogno")) {
                TextField("Titolo", text: $dream.title)
                TextEditor(text: $dream.content).frame(height: 150)
                DatePicker("Data", selection: $dream.date)
                Toggle("Incubo", isOn: $dream.isNightmare)
                Toggle("Preferito", isOn: $dream.isFavorite)
            }
            
            Section {
                Button(isNew ? "Salva" : "Aggiorna") {
                    guard validateForm() else {
                        showValidationError = true
                        return
                    }
                    if isNew {
                        calculateScore(dream : dream)
                        context.insert(dream)
                    } else {
                        if dream.content != originalContent {
                            calculateScore(dream: dream)
                        }
                    }
                    try? context.save()
                    dismiss()
                }
                .disabled(!formHasChanged())
                
                Button("Annulla", role: .cancel) {
                    dismiss()
                }
            }
        }
        .navigationTitle(isNew ? "Nuovo sogno" : "Modifica sogno")
        .onAppear(){
            originalContent = dream.content
        }
        .alert("Errore di validazione", isPresented: $showValidationError) {
            Button("OK", role: .cancel) {}
        } message: {
            Text("Il titolo deve contenere almeno 3 caratteri e il contenuto almeno 5.")
        }
    }

    private func validateForm() -> Bool {
        dream.title.trimmingCharacters(in: .whitespaces).count >= 3 &&
        dream.content.trimmingCharacters(in: .whitespacesAndNewlines).count >= 5
    }

    private func formHasChanged() -> Bool {
        !dream.title.isEmpty || !dream.content.isEmpty || dream.date != .now
    }
}
