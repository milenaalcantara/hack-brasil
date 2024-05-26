//
//  LevelsView.swift
//  hack
//
//  Created by Raissa Parente on 26/05/24.
//

import SwiftUI

struct Level: Hashable {
    var level: Int
    var name: String
}

struct LevelsView: View {
    
    var levels: [Level] = [
    Level(level: 1, name: "Publique sua comp!"),
    Level(level: 2, name: "Compartilhe um spot de artefatos!"),
    Level(level: 3, name: "Dê dicas para alguém"),
    Level(level: 4, name: "Convide alguém para o seu mapa"),
    Level(level: 5, name: "Faça as missões diárias"),

    ]
    var currentLevel: Int = 1
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack (alignment: .leading) {
                Text("Level up")
                    .font(.headline)
                Text("Conclua objetivos para aumentar o seu nível!")
                    .font(.caption2)
            }
            .padding()
            
            ZStack {
                Image("line")
                    .resizable()
                    .frame(height: 35)
                    .padding(.bottom, 30)

                
                HStack {
                    ForEach(levels, id: \.self) { level in
                        
                        VStack {
                            
                            Image(level.level == 1 ? "openchest" : "closedchest")
                                .frame(width: 45, height: 45)
    
                            
                            Text(level.name)
                                .padding(4)
                                .font(.caption2)
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    LevelsView()
}
