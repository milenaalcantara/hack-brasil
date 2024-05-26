//
//  Persistencecontroller.swift
//  hack
//
//  Created by Milena Alcântara on 26/05/24.
//

import CoreData

internal struct CoreDataManager {
    static let shared = CoreDataManager()
    
    let persistenseContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "hackdb")
        container.loadPersistentStores { storeDescription, error in
            if let error = error {
                fatalError("Loading off store failed \(error)")
            }
        }
        
        return container
    }()
}
