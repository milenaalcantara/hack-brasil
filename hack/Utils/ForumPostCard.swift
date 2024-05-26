//
//  ForumPostCard.swift
//  hack
//
//  Created by Raissa Parente on 26/05/24.
//

import SwiftUI

struct ForumPostCard: View {
    
    var textBody: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "house")
                    .frame(width: 35, height: 35)
                    .clipShape(Circle())
                    .background {
                        Circle()
                            .stroke(.black)
                    }
                VStack {
                   Text("Username")
                        .font(.system(size: 12))
                    
                    Text("Mentora")
                        .font(.system(size: 8))
                        .padding(.vertical, 4)
                        .padding(.horizontal, 10)
                        .background(Capsule().foregroundStyle(.yellow))
                }
            }
            
            Image(systemName: "house")
               .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)                 .frame(maxHeight: 220)
                .background(.yellow)
            
            Text(textBody)
                .font(.system(size: 12))
            
            Text("data")
                .frame(width: .infinity, alignment: .trailing)
        }
        .padding()
        .background(.gray)
    }
}

#Preview {
    ForumPostCard(textBody: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a consequat nisi. Vivamus vitae massa sed ligula commodo pulvinar.")
}
