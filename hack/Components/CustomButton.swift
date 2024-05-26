//
//  CustomButton.swift
//  hack
//
//  Created by Milena Alcântara on 26/05/24.
//

import SwiftUI

struct CustomButton: View {
    var category: String
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Text("\(category)")
        }
        .frame(width: .minimum(100, 100))
        .padding()
        .font(.body)
        .foregroundStyle(.white)
        .background(Color.gray)
        .cornerRadius(10)
    }
}

#Preview {
    CustomButton(category: "mentora", action: {
        print("mentora")
    })
}
