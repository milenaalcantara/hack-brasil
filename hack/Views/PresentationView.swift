//
//  PresentationView.swift
//  hack
//
//  Created by Milena Alcântara on 26/05/24.
//

import SwiftUI
import CoreData

struct PresentationView: View {
    let name: String
    let category: String
    
    var body: some View {
        VStack {
            Text("Olá, \(name)")
            Text("Bem vindo ao cargo de \(category)")
        }
    }
}

#Preview {
    PresentationView(name: "Raissa", category: "mentora")
}
