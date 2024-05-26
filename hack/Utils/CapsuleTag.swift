//
//  CapsuleTag.swift
//  hack
//
//  Created by Raissa Parente on 26/05/24.
//

import SwiftUI

struct CapsuleTag: View {
    var text: String
    var textColor: Color
    var color: Color
    
    var body: some View {
        VStack {
            Text(text)
                .foregroundStyle(textColor)
                .font(.system(size: 13))
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
        .background {
            Capsule(style: .circular)
                .strokeBorder(color, lineWidth: 0.8)
                .background(Capsule().fill(color.opacity(0.2)))
        }
    }
}
