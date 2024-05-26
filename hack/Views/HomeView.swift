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
        HomeNavBar()
            .padding(.top)
            .ignoresSafeArea()
        
//        Spacer()
        
        VStack(alignment: .leading, spacing: 20) {
            
            Text("Suas Comunidades")
                .font(.largeTitle)
            
            HorizontalScrollView(title: "Mentorias")
            
            HorizontalScrollView(title: "Tutoriais")
            
        }
        .padding()
        
        Spacer()
        
//        .searchable(text: $searchText)
        
    }
}

#Preview {
    NavigationStack {
        HomeView()
    }
}
