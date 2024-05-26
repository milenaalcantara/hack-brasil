//
//  UserIdView.swift
//  hack
//
//  Created by Raissa Parente on 26/05/24.
//

import SwiftUI

struct UserIdView: View {
    var textColor: Color
    var capsuleColor: Color
    
    var body: some View {
        HStack {
            Image("avatar")
                .frame(width: 45, height: 45)
                .clipShape(Circle())
                
            VStack (spacing: 5) {
               Text("Username")
                    .foregroundStyle(textColor)
                    .font(.headline)
                
                CapsuleTag(text: "Mentora", textColor: .primary, color: capsuleColor)
            }
        }
    }
}
//
//#Preview {
//    UserIdView()
//}
