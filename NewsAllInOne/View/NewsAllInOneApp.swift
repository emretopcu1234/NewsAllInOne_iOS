//
//  NewsAllInOneApp.swift
//  NewsAllInOne
//
//  Created by Emre Topçu on 3.01.2022.
//

import SwiftUI

@main
struct NewsAllInOneApp: App {
    
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
