//
//  hackApp.swift
//  hack
//
//  Created by Milena Alcântara on 26/05/24.
//

import SwiftUI
import CoreData

@main
struct hackApp: App {
    let persistenceContainer = CoreDataManager.shared.persistenseContainer
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(
                    \.managedObjectContext,
                     persistenceContainer.viewContext
                )
        }
    }
}
