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
    @State var isLogged = true
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: PresentationView(category: "mentorada")
                    .environment(\.managedObjectContext, viewContext)
                ) {
                    Text("Mentorada")
                }
                .frame(width: .minimum(100, 100))
                .padding()
                .font(.body)
                .foregroundStyle(.white)
                .background(Color.gray)
                .cornerRadius(10)
                
                NavigationLink(destination: PresentationView(category: "mentora")
                    .environment(\.managedObjectContext, viewContext)
                ) {
                    Text("Mentora")
                }
                .frame(width: .minimum(100, 100))
                .padding()
                .font(.body)
                .foregroundStyle(.white)
                .background(Color.gray)
                .cornerRadius(10)
                
            }
            
           

//            CustomButton(category: "Mentora") {
//                searchUserByCategory(of: "autora")
//                print(foundUser ?? "")
//            }
//            
//            CustomButton(category: "Mentorada") {
//                searchUserByCategory(of: "mentorada")
//                print(foundUser ?? "")
//            }
        }
    }
}

#Preview {
    ContentView()
}
