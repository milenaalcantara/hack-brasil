//
//  HorizontalScrollView.swift
//  hack
//
//  Created by Raissa Parente on 26/05/24.
//

import SwiftUI

struct HorizontalScrollView: View {
    var title: String
    @Binding var goesToForum: Bool

    var body: some View {
        Text(title)
            .font(.headline)
        
        ScrollView(.horizontal) {
            HStack {
                ForEach(1...3, id: \.self) { _ in
                    Button {
                        goesToForum = true
                    } label: {
                        GroupCard()
                    }
                    .padding(5)
                }
            }
        }
        .scrollIndicators(.hidden)
    }
}
