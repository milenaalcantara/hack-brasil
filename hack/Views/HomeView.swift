//
//  HomeView.swift
//  hack
//
//  Created by Raissa Parente on 26/05/24.
//

import SwiftUI

struct HomeView: View {
    
    
    var body: some View {
        
        VStack(alignment: .leading) {
            HorizontalScrollView(title: "Mentorias")
            
            HorizontalScrollView(title: "Tutoriais")
        }
        .padding()
        
    }
}

#Preview {
    HomeView()
}
