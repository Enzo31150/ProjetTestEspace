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

struct Planett: Identifiable {
    let id: UUID = UUID()
    let name: String
    let imageName: String
    let description: String
}

let planets : [Planett] = [
    Planett(name: "Mercure", imageName: "mercurypng", description: "Mercure est la planète la plus proche du Soleil, et la plus petite des planètes de notre Système solaire."),
    Planett(name: "Vénus", imageName: "venuspng", description: "Vénus est la deuxième planète du Système solaire par ordre d'éloignement au Soleil, et la sixième plus grosse aussi bien par la masse que par le diamètre."),
    Planett(name: "Terre", imageName: "earthpng", description: "La Terre est la 3e planète de notre Système solaire, elle est la seule planète habitable et c'est là que nous vivons. Elle a un seul satellite : La Lune."),
    Planett(name: "Mars", imageName: "marspng", description: "Mars est la 4ᵉ planète du Système solaire, située entre la Terre et Jupiter. On l'appelle souvent la planète rouge à cause de la poussière riche en oxyde de fer (rouille) qui couvre sa surface."),
    Planett(name: "Jupiter", imageName: "jupiterpng", description: "Jupiter est la plus grande planète de notre Système solaire, et c'est aussi la première planète gazeuse par ordre d'éloignement du Soleil."),
    Planett(name: "Saturne", imageName: "saturnTek", description: "Saturne est certainement la planète du système solaire la plus facilement identifiable, grâce à ses célèbres anneaux. C'est la deuxième plus grosse planète du système solaire et elle est deux fois plus éloignée du Soleil que Jupiter."),
    Planett(name: "Uranus", imageName: "uranuspng", description: "Uranus est la septième planète du système solaire par ordre d'éloignement du Soleil. Elle est reconnu pour être la planète de glaces."),
    Planett(name: "Neptune", imageName: "neptunepng", description: "Neptune est la huitième planète du système solaire par ordre d'éloignement du Soleil. Elle est également connue sous le nom de Planète des Ombres car ses tempêtes lumineuses semblent créer des ombres sur le côté opposé du Soleil.")
]
