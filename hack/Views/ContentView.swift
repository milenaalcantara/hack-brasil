//
//  ContentView.swift
//  hack
//
//  Created by Milena Alcântara on 26/05/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.managedObjectContext) private var viewContext
    @State var isPresented = true
    @State var user: UserEntity?
    
    var body: some View {
        
        TabView {
            Group {
                ForumView()
                    .tabItem {
                        Label("Comunidades", systemImage: "person.2.fill")
                    }
                
                NavigationStack {
                    HomeView()
                }
                .tabItem {
                    Label("Explorar", systemImage: "sparkle.magnifyingglass")
                }
                
                Text("")
                    .tabItem {
                        Label("Perfil", systemImage: "person.crop.circle.fill")
                    }
            }
            .toolbarBackground(Color.corfundo, for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
        }
        .fullScreenCover(isPresented: $isPresented) {
            ChoosePerfilView(
                isPresented: $isPresented,
                user: $user
            )
        }
    }
}

#Preview {
    ContentView()
}
