//
//  PlanetTitlePillView.swift
//  ProjetEspace
//
//  Created by Apprenant 78 on 13/03/2026.
//

import SwiftUI

struct PlanetTitlePillView: View {
    let name: String
    
    var body: some View {
        Text(name)
            .font(.system(.title3, design: .rounded).weight(.heavy))
            .foregroundStyle(.white.opacity(0.95))
            .padding(.vertical, 12)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .clipShape(Capsule())
            .overlay(
                Capsule().stroke(.white.opacity(0.13), lineWidth: 1)
            )
    }
}
