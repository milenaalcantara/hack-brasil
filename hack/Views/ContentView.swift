//
//  ContentView.swift
//  hack
//
//  Created by Milena Alcântara on 26/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Group {
                NavigationStack {
                    HomeView()
                }
                .tabItem {
                    Label("Comunidades", systemImage: "person.2.fill")
                }
                
                Text("Em breve...")
                .tabItem {
                    Label("Explorar", systemImage: "sparkle.magnifyingglass")
                }
                
                Text("Em breve...")
                    .tabItem {
                        Label("Perfil", systemImage: "person.crop.circle.fill")
                    }
            }
            .toolbarBackground(Color.corfundo, for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
        }

    }

}

#Preview {
    ContentView()
}
