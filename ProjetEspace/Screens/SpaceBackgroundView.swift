//
//  SpaceBackgroundView.swift
//  ProjetEspace
//
//  Created by Apprenant 78 on 13/03/2026.
//

import SwiftUI

struct SpaceBackgroundView: View {
    var body: some View {
        LinearGradient (
            colors: [
                Color(red: 0.04, green: 0.05, blue: 0.12),
                Color(red: 0.05, green: 0.06, blue: 0.16),
                Color(red: 0.03, green: 0.03, blue: 0.10),
            ],
            startPoint: .topLeading,
            endPoint: .bottomLeading
        )
        .overlay(StarFieldView().opacity(0.55))
        .ignoresSafeArea()
    }
}

struct StarFieldView: View {
    var body: some View {
        Canvas { ctx, size in
            let count = 220
            for i in 0..<count {
                let x = Double.random(in: 0...size.width)
                let y = Double.random(in: 0...size.height)
                let r = Double.random(in: 0...1.6)
                let a = Double.random(in: 0...0.9)
                let color = Color.white.opacity(a)
                
                ctx.fill(
                    Path(ellipseIn: CGRect(x: x, y: y, width: r, height: r)),
                    with: .color(color)
                )
                
                if i % 55 == 0 {
                    ctx.fill(
                        Path(ellipseIn: CGRect(x: x - 1.2, y: y - 1.2, width: r + 2.4, height: r + 2.4)),
                        with: .color(Color.white.opacity(0.18))
                    )
                }
            }
        }
    }
}
