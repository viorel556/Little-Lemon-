//
//  Home.swift
//  Litlte lemon
//
//  Created by Viorel Harabaru  on 08.07.2023.
//

import Foundation
import SwiftUI

struct Home: View {
    
    var body: some View {
        MainScreen()
            .navigationBarBackButtonHidden()
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home().environment(\.managedObjectContext, PersistenceController.shared.container.viewContext)
    }
}
