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
              .padding(.vertical, 12)
            
            VStack (alignment: .leading, spacing: 5) {
               Text("ameninadogorro")
                    .foregroundStyle(textColor)
                    .font(.headline)

                CapsuleTag(text: "Mentora", textColor: .primary, color: capsuleColor)
            }
        }
    }
}
