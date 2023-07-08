//
//  Litlte_lemonApp.swift
//  Litlte lemon
//
//  Created by Viorel Harabaru  on 25.06.2023.
//

import SwiftUI

@main
struct LittleLemonApp: App {
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            Onboarding().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
