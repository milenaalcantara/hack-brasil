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
        
        
        ZStack{
//            Color.corfundo
//                .ignoresSafeArea()
    
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Suas Comunidades")
                        .font(.title)
                    
                    HorizontalScrollView(title: "Mentorias")
                    
                    HorizontalScrollView(title: "Tutoriais")
                    
                }
                .padding()
                
                Spacer()

        }
        .navigationTitle(" ")
        .toolbar {
            ToolbarItem (placement: .topBarLeading) {
                UserIdView(textColor: .kelpwhite, capsuleColor: .accentColor)
            }
            
            ToolbarItem (placement: .topBarTrailing) {
                Button {
                } label: {
                    Image(systemName: "magnifyingglass")
                        .foregroundStyle(.cordestaque)
                        .font(.system(size: 25))
                }
            }
        }
        .toolbarBackground(.corfundo, for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)

    }
}

#Preview {
    NavigationStack {
        HomeView()
    }
}
