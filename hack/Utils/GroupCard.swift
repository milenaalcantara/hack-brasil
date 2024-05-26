//
//  GroupCard.swift
//  hack
//
//  Created by Raissa Parente on 26/05/24.
//

import SwiftUI

struct GroupCard: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(systemName: "house")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.yellow)
            
            VStack(alignment: .leading) {
                Text("group title")
                HStack {
                    Text("5 membros")
                    Spacer()
                    CapsuleTag(text: "Silver", textColor: .primary, color: .gray)
                }


            }
            .padding()
            .frame(maxWidth: .infinity)
            .frame(height: 71)
            .background(.blue)
            
        }
        .frame(width: 234, height: 170)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    GroupCard()
}
