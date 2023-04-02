//
//  ProfilButtonMenu.swift
//  ModerneShopping
//
//  Created by Ensar Ekici on 2023-03-29.

import SwiftUI

/// Styling til knappen i profilvisningen
struct ProfilButtonMenu: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .font(.headline)
            .padding()
            .background(configuration.isPressed ? Color.tertiary : Color.secondaryBackground)
            .cornerRadius(12)
            .shadow(color: .accentColor.opacity(0.1), radius: 2, x: 0.5, y: 1)
    }
}
