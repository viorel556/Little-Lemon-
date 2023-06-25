//
//  Litlte_lemonApp.swift
//  Litlte lemon
//
//  Created by Viorel Harabaru  on 25.06.2023.
//

import SwiftUI

@main
struct Litlte_lemonApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
