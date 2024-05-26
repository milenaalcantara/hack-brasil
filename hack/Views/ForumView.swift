//
//  ForumView.swift
//  hack
//
//  Created by Raissa Parente on 26/05/24.
//

import SwiftUI

struct ForumView: View {
    
    var forumPosts: [Int] = [1, 2, 3]
    
    var body: some View {
        VStack {
            ForumNavBar()
            
            
            List {
                LevelsView()
                    .padding(.bottom)
                
                ForEach(forumPosts, id: \.self) { post in
                    ForumPostCard()
                        .listRowInsets(EdgeInsets())
                        .padding(.bottom)
                }
            }
            .listStyle(.plain)
            .listRowSeparator(.hidden)
            .listRowInsets(.none)
            
        }
        
    }
}

#Preview {
    ForumView()
}
