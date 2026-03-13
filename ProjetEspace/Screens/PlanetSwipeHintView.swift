//
//  PlanetSwipeHintView.swift
//  ProjetEspace
//
//  Created by Apprenant 78 on 13/03/2026.
//

import SwiftUI

struct PlanetSwipeHintView: View {
    var onPrev: () -> Void
    var onNext: () -> Void
    
    var body: some View {
        HStack {
            Button(action: onPrev) {
                Label("Précédente", systemImage: "chevron.left")
            }
            .buttonStyle(.bordered)
            .tint(.white.opacity(0.14))
            
            Spacer()
            
            Button(action: onNext) {
                Label("Suivante", systemImage: "chevron.right")
            }
            .buttonStyle(.bordered)
            .tint(Color.purple.opacity(0.85))
        }
        .font(.system(.subheadline, design: .rounded).weight(.semibold))
        .foregroundStyle(Color.white.opacity(0.92))
        .padding(12)
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
        .overlay(
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .stroke(.white.opacity(0.10), lineWidth: 1)
        )
    }
}
