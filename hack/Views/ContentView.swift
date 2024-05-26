//
//  ContentView.swift
//  hack
//
//  Created by Milena Alcântara on 26/05/24.
//

import SwiftUI

struct ContentView: View {
    @State var count = 0
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


        
        
//        Button {
//            increment()
//        } label: {
//            Text("count: \(count)")
//        }
    }

    func increment() {
        count+=1
    }
}

#Preview {
    ContentView()
}
