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
            UserIdView(textColor: .kelpwhite, capsuleColor: .accentColor)
            Spacer()
            Button {
                
            } label: {
                Image(systemName: "magnifyingglass")
                    .foregroundStyle(.cordestaque)
                    .font(.system(size: 25))
            }
            .frame(height: 200)
        }
        .padding(.horizontal)
        .frame(height: 120)
        .frame(maxWidth: .infinity)
        .background(Color.corfundo.shadow(radius: 5, x: 0, y: 5))
    }
}

#Preview {
    HomeNavBar()
}
