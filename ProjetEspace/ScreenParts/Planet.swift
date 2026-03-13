//
//  Planet.swift
//  ProjetEspace
//
//  Created by Apprenant 78 on 13/03/2026.
//

import Foundation

extension Planet {
    static let all: [Planet] = [
        .init(name: "Mercure", imageName: "mercury", hasRings: false),
        .init(name: "Vénus", imageName: "venus", hasRings: false),
        .init(name: "Terre", imageName: "earth", hasRings: false),
        .init(name: "Mars", imageName: "mars", hasRings: false),
        .init(name: "Jupiter", imageName: "jupiter", hasRings: false),
        .init(name: "Saturne", imageName: "saturn", hasRings: true),
        .init(name: "Uranus", imageName: "uranus", hasRings: true),
        .init(name: "Neptune", imageName: "neptune", hasRings: false),
    ]
}
