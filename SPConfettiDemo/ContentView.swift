//
//  ContentView.swift
//  SPConfettiDemo
//
//  Created by Rudolf Farkas on 18.09.24.
//

import SwiftUI
import SPConfetti

struct ContentView: View {
    @State private var showConfetti = false

    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Spacer()
            Button(action: {
                showConfetti.toggle()
                if showConfetti {
                    SPConfetti.startAnimating(.centerWidthToDown, particles: [.triangle, .star, .heart], duration: 2)
                } else {
                    SPConfetti.stopAnimating()
                }
            }) {
                Text("Toggle Confetti")
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
