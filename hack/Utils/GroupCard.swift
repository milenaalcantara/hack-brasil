//
//  GroupCard.swift
//  hack
//
//  Created by Raissa Parente on 26/05/24.
//

import SwiftUI

struct GroupCard: View {
    var body: some View {
        VStack(spacing: 0) {
            Image("cardimg")
                .resizable()
                .scaledToFill()
                .frame(height: 137)
                .frame(maxWidth: .infinity)
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Group title")
                    .foregroundStyle(.kelpwhite)
                    .font(.headline)
                    .bold()
                
                Text("5 membros")
                    .foregroundStyle(.kelpwhite)
                    .font(.body)
                
                CapsuleTag(text: "Silver", textColor: .corfundo, color: .accentColor)
                
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .frame(height: 97)
            .background(.corfundo)
            
        }
        .frame(width: 234, height: 234)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    GroupCard()
}
