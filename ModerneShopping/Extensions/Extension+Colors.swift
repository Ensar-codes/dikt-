//
//  Extension+Colors.swift
//  ModerneShopping
//
//  Created by Ensar Ekici on 2023-03-29.
//

import SwiftUI

extension Color {
    static let background: Color = Color("Background")
    static let secondaryBackground: Color = Color("SecondaryBackground")
    static let tertiary: Color = Color("tertiary")
    static let darkText: Color = Color("darkText")
    
    /// Endre fargen på kantskyggen avhengig av brukeren når han klikker på Logg inn på LoginView
    /// - Parameter condition: an optional bool that will affect the color that is returned
    /// - Returns: a Color
    static func borderColor(condition: Bool?)-> Color{
        switch condition {
        case .some(true):
            return Color.green.opacity(0.8)
        case .some(false):
            return Color.red.opacity(0.8)
        case .none:
            return Color.darkText.opacity(0.2)
        }
    }
}
