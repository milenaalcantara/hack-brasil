//
//  ForumPostCard.swift
//  hack
//
//  Created by Raissa Parente on 26/05/24.
//

import SwiftUI

struct ForumPostCard: View {
    
    var textBody: String = ""
    @State var seeComments = false
    @State var newComment: String = ""
    
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
                    
                    CapsuleTag(text: "Mentora", textColor: .primary, color: .blue)
                }
            }
            
            Image(systemName: "house")
               .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)                 .frame(maxHeight: 220)
                .background(.yellow)
                .padding(.vertical)
            
            Text(textBody)
                .font(.system(size: 12))
            
            Text("data")
                .frame(maxWidth: .infinity, alignment: .trailing)
            
            HStack {
                Button {
                    //
                } label: {
                    Text("like")
                }
                
                Button {
                    seeComments.toggle()
                } label: {
                    Text("comment")
                }
            }
            
            HStack {
                TextField("Escreva um comentário...", text: $newComment)
                Button {
                    //
                } label: {
                    Image(systemName: "camera")
                }
                
                Button {
                    
                } label: {
                    Text("Enviar")
                }
                .buttonStyle(.borderedProminent)
            }
            .padding(.horizontal)
            .clipShape(Capsule())
            .background {
                Capsule()
                    .stroke(.black)
            }
        }
        .padding()
        .background(.gray.opacity(0.5))
    }
}

#Preview {
    ForumPostCard(textBody: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a consequat nisi. Vivamus vitae massa sed ligula commodo pulvinar. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a consequat nisi. Vivamus vitae massa sed ligula commodo pulvinar.")
}
