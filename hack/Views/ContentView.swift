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
            Text("")
                .tabItem {
                    Label("abc", systemImage: "person.3.fill")
                }
                        
            NavigationStack {
                HomeView()
            }
            .tabItem {
                Label("abc", systemImage: "chart.bar")
            }
            
            Text("")
                .tabItem {
                    Label("abc", systemImage: "person.crop.circle.fill")
                }
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
