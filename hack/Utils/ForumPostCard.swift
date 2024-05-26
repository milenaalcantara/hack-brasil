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
            UserIdView(textColor: .primary, capsuleColor: .yellow)
            
            Text(textBody)
                .font(.system(size: 12))
            
            Image("forumimg")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .frame(maxHeight: 220)
                .clipShape(RoundedRectangle(cornerRadius: 10))

    
            Divider()
                .padding(.horizontal, -16)
            
            HStack {
                Button { } label: {
                    Image(systemName: "heart")
                        .font(.system(size: 20))
                        .foregroundStyle(.gray)
                }
                
                Button {
                    seeComments.toggle()
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.system(size: 20))
                        .foregroundStyle(.gray)
                }
                .padding(.horizontal)
            }

            Divider()
                .padding(.bottom)
                .padding(.horizontal, -16)
            
            HStack {
                TextField("Escreva um comentário...", text: $newComment)
                Button { } label: {
                    Image(systemName: "camera")
                        .foregroundStyle(.kelppurple)
                }
                
                Button { } label: {
                    Text("Enviar")
                        .font(.caption2)
                }
                .buttonStyle(CapsuleButtonStyle(foregroundColor: .kelpwhite, backgroundColor: .kelppurple, padding: 16))
            }
            .padding(.vertical, 4)
            .padding(.horizontal)
            .clipShape(Capsule())
            .background {
                Capsule()
                    .stroke(.gray)
            }
        }
        .padding()
//        .background(.gray.opacity(0.5))
    }
}

#Preview {
    ForumPostCard(textBody: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a consequat nisi. Vivamus vitae massa sed ligula commodo pulvinar. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a consequat nisi. Vivamus vitae massa sed ligula commodo pulvinar.")
}
