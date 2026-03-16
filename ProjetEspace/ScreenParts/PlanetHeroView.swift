//
//  PlanetHeroView.swift
//  ProjetEspace
//
//  Created by Apprenant 78 on 13/03/2026.
//

import SwiftUI

struct PlanetHeroView: View {
    let planet: Planet
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 26, style: .continuous)
                .fill(.white.opacity(0.06))
                .background(.ultraThinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 26, style: .continuous))
                .overlay(
                    RoundedRectangle(cornerRadius: 26, style: .continuous)
                        .stroke(.white.opacity(0.10), lineWidth: 1)
                )
            VStack {
                Image(planet.imageName)
                    .resizable()
                    .scaledToFit()
                    .padding(18)
            }
        }
        .shadow(color: .black.opacity(0.35), radius: 18, x: 0, y: 10)
    }
}
