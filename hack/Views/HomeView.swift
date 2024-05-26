//
//  HomeView.swift
//  hack
//
//  Created by Raissa Parente on 26/05/24.
//

import SwiftUI

struct HomeView: View {
    
    @State var searchText: String = ""
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20) {
            
            Text("Suas Comunidades")
                .font(.largeTitle)
            
            HorizontalScrollView(title: "Mentorias")
            
            HorizontalScrollView(title: "Tutoriais")
        }
        .padding()
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                UserIdView()
                    .padding(.vertical)
            }
            
            
            ToolbarItem {
                Button {
                    
                } label: {
                    Image(systemName: "magnifyingglass")
                }
                .frame(height: 200)
            }
        }
        .toolbarBackground(Color.gray, for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)

//        .searchable(text: $searchText)
        
    }
}

#Preview {
    NavigationStack {
        HomeView()
    }
}
