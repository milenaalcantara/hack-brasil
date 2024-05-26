//
//  CapsuleButton.swift
//  hack
//
//  Created by Raissa Parente on 26/05/24.
//

import SwiftUI

struct CapsuleButtonStyle: ButtonStyle {
    var foregroundColor: Color
    var backgroundColor: Color
    var padding: CGFloat
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(foregroundColor)
            .padding(.horizontal, padding)
            .padding(.vertical, 4)
            .background(
                Capsule()
                    .fill(backgroundColor)
            )
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
    }
}
