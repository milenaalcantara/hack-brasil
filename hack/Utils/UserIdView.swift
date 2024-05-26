//
//  UserIdView.swift
//  hack
//
//  Created by Raissa Parente on 26/05/24.
//

import SwiftUI

struct UserIdView: View {
    var body: some View {
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
    }
}

#Preview {
    UserIdView()
}
