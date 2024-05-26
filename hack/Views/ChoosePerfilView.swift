//
//  ChoosePerfilView.swift
//  hack
//
//  Created by Milena Alcântara on 26/05/24.
//

import SwiftUI
import CoreData

struct ChoosePerfilView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @Binding var isPresented: Bool
    @Binding var user: UserEntity?
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("corfundo")
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Button {
                        searchUserByCategory(of: "mentora")
                        isPresented = false
                    } label: {
                        Text("Mentora")
                    }
                    .frame(width: .minimum(200, 200))
                    .padding()
                    .font(.body)
                    .foregroundStyle(.white)
                    .background(Color.gray)
                    .cornerRadius(10)
                    
                    Button {
                        searchUserByCategory(of: "mentorada")
                        print(user ?? "")
                        isPresented = false
                    } label: {
                        Text("Mentorada")
                    }
                    .frame(width: .minimum(200, 200))
                    .padding()
                    .font(.body)
                    .foregroundStyle(.white)
                    .background(Color.gray)
                    .cornerRadius(10)
                }
            }
        }
    }
}

extension ChoosePerfilView {
    private func searchUserByCategory(of category: String) {
        let fetchRequest: NSFetchRequest<UserEntity> = UserEntity.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "category == %@", category)

        do {
            let results = try viewContext.fetch(fetchRequest)
            user = results.first
        } catch {
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
    }
}

#Preview {
    ChoosePerfilView(isPresented: .constant(false), user: .constant(UserEntity()))
}
