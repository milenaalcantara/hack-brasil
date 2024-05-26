//
//  ContentView.swift
//  hack
//
//  Created by Milena Alcântara on 26/05/24.
//

import SwiftUI

struct ContentView: View {
    @State var count = 0
    var body: some View {
        Button {
            increment()
        } label: {
            Text("count: \(count)")
        }
    }

    func increment() {
        count+=1
    }
}

#Preview {
    ContentView()
}
