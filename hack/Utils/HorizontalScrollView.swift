//
//  HorizontalScrollView.swift
//  hack
//
//  Created by Raissa Parente on 26/05/24.
//

import SwiftUI

struct HorizontalScrollView: View {
    
    var title: String
    var groups: [String] = [".", ".", "."]
    
    var body: some View {
        
        Text(title)
        
        ScrollView(.horizontal) {
            HStack {
                ForEach(groups, id: \.self) { _ in
                    VStack {
                        Color.gray
                            .frame(width: 234, height: 170)
                    }
                }
            }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    HorizontalScrollView(title: "Grupos")
}
