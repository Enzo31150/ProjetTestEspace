//
//  ClassementView.swift
//  ProjetEspace
//
//  Created by Leskeu  on 11/03/2026.
//

import SwiftUI

struct ClassementView: View {
    var body: some View {
        ZStack {
            Image("ciel-etoile")
                .ignoresSafeArea()
                .frame(width: 100, height: 100)
            
            VStack {
                backgroundClassement()
                ScrollView(showsIndicators: false) {
                    RectangleClassement()
                }
            }
        }
    }
}
#Preview {
    ClassementView()
}
