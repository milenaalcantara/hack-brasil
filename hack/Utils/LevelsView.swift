//
//  LevelsView.swift
//  hack
//
//  Created by Raissa Parente on 26/05/24.
//

import SwiftUI

struct LevelsView: View {
    
    var levels: [Int] = [1,2,3,4,5]

    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Level up")
                .padding()
            
            ZStack {
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(Color.gray)
                    .padding(.bottom, 22)
                
                HStack(spacing: 30) {
                    ForEach(levels, id: \.self) { level in
                        
                        VStack {
                            
                            Image(systemName: "house")
                                .frame(width: 45, height: 45)
                                .clipShape(Circle())
                                .background {
                                    Circle()
                                        .stroke(.black)
                                }
                            
                            Text("texto")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    LevelsView()
}
