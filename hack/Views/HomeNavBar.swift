//
//  NavBar.swift
//  hack
//
//  Created by Raissa Parente on 26/05/24.
//

import SwiftUI

struct HomeNavBar: View {
    var body: some View {
        HStack {
            UserIdView()
            Spacer()
            Button {
                
            } label: {
                Image(systemName: "magnifyingglass")
            }
            .frame(height: 200)
        }
        .padding(.horizontal)
        .frame(height: 96)
        .frame(maxWidth: .infinity)
        .background(.gray.opacity(0.5))
    }
}

#Preview {
    HomeNavBar()
}
