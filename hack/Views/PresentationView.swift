//
//  PresentationView.swift
//  hack
//
//  Created by Milena Alcântara on 26/05/24.
//

import SwiftUI
import CoreData

struct PresentationView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @State private var foundUser: UserEntity?
    var category: String
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Olá, \(foundUser?.name ?? "")")
                Text("Bem vindo ao cargo de \(foundUser?.category ?? "")")
            }
            .onAppear {
                searchUserByCategory(of: category)
            }
        }
    }
}

extension PresentationView {
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
    PresentationView(category: "")
}
