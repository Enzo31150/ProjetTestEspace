//
//  ContentView.swift
//  ProjetEspace
//
//  Created by apprenant128 on 04/03/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            Image("ciel-etoile")
                .opacity(0.8)
            ProfilTemplate()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
