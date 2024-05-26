//
//  ForumView.swift
//  hack
//
//  Created by Raissa Parente on 26/05/24.
//

import SwiftUI

struct ForumView: View {
    @Environment(\.dismiss) var dismiss
    var forumPosts: [Int] = [1, 2, 3]
    
    var body: some View {
        VStack {
//            ForumNavBar()
//                .ignoresSafeArea()
            
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
        .navigationTitle(" ")
        .toolbar {
            ToolbarItem (placement: .topBarLeading) {
                HStack {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                    }
                    
                    Button { } label: {
                        Image(systemName: "calendar.badge.plus")
                    }
                }
            }
            
            ToolbarItem (placement: .topBarTrailing) {
                HStack {
                    Button { } label: {
                        Image(systemName: "magnifyingglass")
                    }
                    
                    Button { } label: {
                        Image(systemName: "bubble.left")
                    }
                }
            }
        }
        .toolbarBackground(.corfundo, for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
    }
}

#Preview {
    NavigationStack {
        ForumView()
    }
}
