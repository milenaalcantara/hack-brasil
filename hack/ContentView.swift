//
//  ContentView.swift
//  hack
//
//  Created by Milena Alcântara on 26/05/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @State var count = 0
    @State private var foundUser: UserEntity?
    
    var body: some View {
        VStack {
            CustomButton(category: "Mentora") {
                searchUserByCategory(of: "autora")
                print(foundUser ?? "")
            }
            
            CustomButton(category: "Mentorada") {
                searchUserByCategory(of: "mentorada")
                print(foundUser ?? "")
            }
        }
    }
}

extension ContentView {
    private func searchUserByCategory(of category: String) {
        let fetchRequest: NSFetchRequest<UserEntity> = UserEntity.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "category == %@", category)

        do {
            let results = try viewContext.fetch(fetchRequest)
            foundUser = results.first
        } catch {
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
    }
}

#Preview {
    ContentView()
}
