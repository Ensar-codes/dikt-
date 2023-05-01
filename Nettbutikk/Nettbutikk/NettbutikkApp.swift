//
//  NettbutikkApp.swift
//  Nettbutikk
//
//  Created by Ensar Ekici on 19/04/2023.
//

import SwiftUI

@main
struct NettbutikkApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
