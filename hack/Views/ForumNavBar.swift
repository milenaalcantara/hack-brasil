//
//  ForumNavBar.swift
//  hack
//
//  Created by Raissa Parente on 26/05/24.
//

import SwiftUI

struct ForumNavBar: View {
    
    var body: some View {
        
        VStack {
            Spacer()

            HStack {
                Button { } label: {
                    Image(systemName: "calendar.badge.plus")
                }
                
                Spacer()
                Button { } label: {
                    Image(systemName: "magnifyingglass")
                }
                
                Button { } label: {
                    Image(systemName: "bubble.left")
                }
                .frame(height: 200)
            }
        }
        .foregroundStyle(.kelpwhite)
        .font(.system(size: 25))
        .padding(.horizontal)
        .frame(height: 96)
        .frame(maxWidth: .infinity)
        .background(.corfundo)
//        .background(Color.corfundo.shadow(radius: 5, x: 0, y: 5))
        

    }
}

struct SwiftUIWrapper<T: View>: UIViewControllerRepresentable {
    let content: () -> T
    func makeUIViewController(context: Context) -> UIHostingController<T> {
        UIHostingController(rootView: content())
    }
    func updateUIViewController(_ uiViewController: UIHostingController<T>, context: Context) {}
}

#Preview {
    ForumNavBar()
}
