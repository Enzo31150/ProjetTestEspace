//
//  FavoriteMainTemplate.swift
//  ProjetEspace
//
//  Created by apprenant128 on 13/03/2026.
//

import SwiftUI

struct FavoriteMainTemplate: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("ciel-etoile")
                    .ignoresSafeArea()
                    .frame(width: 100, height: 100)
                VStack(spacing:16) {
                    FavoriteTopBoard()
                    FavoriteBottomBoard()
                    Spacer()
                }
            }
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    FavoriteMainTemplate()
}
