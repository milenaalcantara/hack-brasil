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
            
            ZStack {
//                Color.corfundo
//                    .ignoresSafeArea()
                
                List {
                    LevelsView()
                        .listRowInsets(EdgeInsets())
                        .padding(.bottom)
                        .listRowBackground(Color.clear)

                    ForEach(forumPosts, id: \.self) { post in
                        ForumPostCard()
                            .listRowBackground(Color.clear)
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
}

#Preview {
    ForumView()
}
