//
//  Planet.swift
//  ProjetEspace
//
//  Created by Apprenant 78 on 13/03/2026.
//

import Foundation

extension Planet {
    static let all: [Planet] = [
        .init(name: "Mercure", imageName: "mercurypng", hasRings: false),
        .init(name: "Vénus", imageName: "venuspng", hasRings: false),
        .init(name: "Terre", imageName: "earthpng", hasRings: false),
        .init(name: "Mars", imageName: "marspng", hasRings: false),
        .init(name: "Jupiter", imageName: "jupiterpng", hasRings: false),
        .init(name: "Saturne", imageName: "saturnTek", hasRings: true),
        .init(name: "Uranus", imageName: "uranuspng", hasRings: true),
        .init(name: "Neptune", imageName: "neptunepng", hasRings: false),
    ]
}
