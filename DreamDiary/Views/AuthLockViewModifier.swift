//
//  AuthLockViewModifier.swift
//  DreamDiary
//
//  Created by Saad El Maliki on 23/06/25.
//

import SwiftUI
import LocalAuthentication

struct AuthLockViewModifier: ViewModifier {
    @AppStorage("authenticationEnabled") private var authenticationEnabled: Bool = false
    @State private var isUnlocked = false

    func body(content: Content) -> some View {
        Group {
            if authenticationEnabled && !isUnlocked {
                VStack {
                    Image(systemName: "lock.circle.fill")
                        .font(.largeTitle)
                        .padding()
                    Text("Autenticazione richiesta")
                        .font(.title2)
                }
                .onAppear(perform: authenticate)
            } else {
                content
            }
        }
    }

    private func authenticate() {
        let context = LAContext()
        var error: NSError?

        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Per accedere al diario dei sogni") { success, _ in
                DispatchQueue.main.async {
                    isUnlocked = success
                }
            }
        } else {
            isUnlocked = true //fallback
        }
    }
}

extension View {
    func biometricProtected() -> some View {
        self.modifier(AuthLockViewModifier())
    }
}
