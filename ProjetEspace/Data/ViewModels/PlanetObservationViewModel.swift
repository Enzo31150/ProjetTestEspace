//
//  PlanetObservationViewModel.swift
//  ProjetEspace
//
//  Created by Apprenant 78 on 13/03/2026.
//

import Foundation
import SwiftUI
internal import Combine

final class PlanetObservationViewModel: ObservableObject {
    @Published private(set) var current: Planet

    private var history: [Planet] = []
    private var currentIndex: Int = 0

    init() {
        let start = Planet.all.randomElement() ?? Planet.all[0]
        self.current = start
        self.history = [start]
        self.currentIndex = 0
    }

    func goNextRandom() {
        // Générer une nouvelle planète aléatoire différente de la planète courante
        var nextPlanet: Planet
        repeat {
            nextPlanet = Planet.all.randomElement() ?? current
        } while nextPlanet == current

        // Si on n'est pas à la fin de l'historique, on supprime la suite (nouveau chemin)
        if currentIndex < history.count - 1 {
            history = Array(history.prefix(upTo: currentIndex + 1))
        }

        // Ajouter la nouvelle planète et avancer l'index
        history.append(nextPlanet)
        currentIndex += 1
        current = nextPlanet
    }

    func goPreviousRandom() {
        // Revenir en arrière si possible
        guard currentIndex > 0 else { return }
        currentIndex -= 1
        current = history[currentIndex]
    }
}
