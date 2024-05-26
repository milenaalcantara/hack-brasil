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
    
    init() {
        self.addDefaultUsers()
    }
    
    func saveContext() {
        if persistenseContainer.viewContext.hasChanges {
            do {
                try persistenseContainer.viewContext.save()
            } catch {
                print("An error occurred while saving: \(error)")
            }
        }
    }
    
    private func addDefaultUsers() {
        let context = persistenseContainer.viewContext

        let fetchRequest: NSFetchRequest<UserEntity> = UserEntity.fetchRequest()
        fetchRequest.predicate = NSPredicate(value: true)

        do {
            let count = try context.count(for: fetchRequest)
            if count == 0 {
                let user2 = UserEntity(context: context)
                user2.name = "Ana Raiane"
                user2.email = "ameninadogorro@gmail.com"
                user2.category = "mentorada"
                user2.password = "mentorada1"
                
                let user3 = UserEntity(context: context)
                user3.name = "Ana Raiane"
                user3.email = "ameninadogorro@gmail.com"
                user3.category = "autora"
                user3.password = "mentora1"

                saveContext()
            }
        } catch {
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
    }
}
