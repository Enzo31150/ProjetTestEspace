////
////  DataQuizz.swift
////  ProjetEspace
////
////  Created by Leskeu  on 13/03/2026.
////
//
//import SwiftUI
//
//struct Question : Identifiable {
//    var id = UUID()
//    let question: String
//    let answers: [String]
//    let correctAnswer: Int
//    var picture : String
//  
//}
//
//
//
//let quizQuestions: [Question] = [
//
//Question(question: "Quelle étoile est au centre du système solaire ?",
//answers: ["Sirius", "Sun", "Proxima Centauri"],
//correctAnswer: 1, picture: "placeholderSun"),
//
//Question(question: "Quelle est la température approximative à la surface du Soleil ?",
//answers: ["5 500 °C", "500 °C", "50 000 °C"],
//correctAnswer: 0, picture: "placeholderSun"),
//
//Question(question: "Quelle proportion de la masse du système solaire représente le Soleil ?",
//answers: ["25 %", "50 %", "99,86 %"],
//         correctAnswer: 2, picture : "placeholderSun"),
//
//Question(question: "Quelle est la planète la plus proche du Soleil ?",
//answers: ["Mercury", "Mars", "Vénus"],
//correctAnswer: 0, picture: "mercury"),
//
//Question(question: "Combien de lunes possède Mercure ?",
//answers: ["2", "0", "5"],
//correctAnswer: 1, picture: "mercury"),
//
//Question(question: "Pourquoi les températures varient-elles beaucoup sur Mercure ?",
//answers: ["Elle est très éloignée du Soleil", "Elle n’a presque pas d’atmosphère", "Elle possède beaucoup d’océans"],
//correctAnswer: 1, picture: "mercury"),
//
//Question(question: "Quelle est la planète la plus chaude ?",
//answers: ["Venus", "Mercure", "Mars"],
//correctAnswer: 0, picture: "venus"),
//
//Question(question: "Pourquoi Vénus est-elle si chaude ?",
//answers: ["Effet de serre extrême", "Proximité de Jupiter", "Présence d’eau liquide"],
//correctAnswer: 0, picture: "venus"),
//
//Question(question: "Dans quel sens tourne Vénus ?",
//answers: ["Dans le sens inverse des autres planètes", "Très rapidement comme Jupiter", "Elle ne tourne pas"],
//correctAnswer: 0, picture : "venus"),
//
//Question(question: "Quelle planète abrite la vie connue ?",
//answers: ["Mars", "Earth", "Vénus"],
//correctAnswer: 1, picture: "earth"),
//
//Question(question: "Comment s’appelle le satellite naturel de la Terre ?",
//answers: ["Titan", "Europe", "Moon"],
//correctAnswer: 2, picture : "moon"),
//
//Question(question: "Quel pourcentage de la surface terrestre est couvert d’eau ?",
//answers: ["30 %", "71 %", "90 %"],
//correctAnswer: 1, picture: "earth"),
//
//Question(question: "Quelle planète est appelée planète rouge ?",
//answers: ["Mars", "Mercure", "Neptune"],
//correctAnswer: 0, picture: "mars"),
//
//Question(question: "Combien Mars possède-t-elle de lunes ?",
//answers: ["2", "8", "12"],
//correctAnswer: 0, picture: "mars"),
//
//Question(question: "Comment s’appellent les lunes de Mars ?",
//answers: ["Titan et Io", "Phobos et Deimos", "Europe et Ganymède"],
//correctAnswer: 1, picture: "mars"),
//
//Question(question: "Quelle est la plus grande planète ?",
//answers: ["Jupiter", "Saturne", "Neptune"],
//correctAnswer: 0, picture: "jupiter"),
//
//Question(question: "Comment s’appelle la grande tempête sur Jupiter ?",
//answers: ["La Grande Tache Rouge", "L’Œil de Jupiter", "La Tempête Bleue"],
//correctAnswer: 0, picture: "jupiter"),
//
//Question(question: "Combien Jupiter possède-t-elle environ de lunes ?",
//answers: ["10", "95", "3"],
//correctAnswer: 1, picture: "jupiter"),
//
//Question(question: "Quelle planète possède les anneaux les plus visibles ?",
//answers: ["Saturn", "Mars", "Mercure"],
//correctAnswer: 0,picture : "saturn"),
//
//Question(question: "De quoi sont composés les anneaux de Saturne ?",
//answers: ["Gaz", "Glace et roches", "Métal"],
//correctAnswer: 1, picture: "saturn"),
//
//Question(question: "Quelle est la plus grande lune de Saturne ?",
//answers: ["Titan", "Phobos", "Triton"],
//correctAnswer: 0, picture: "saturn"),
//
//Question(question: "Quelle planète tourne presque sur le côté ?",
//answers: ["Uranus", "Mars", "Mercure"],
//correctAnswer: 0, picture: "uranus"),
//
//Question(question: "Pourquoi Uranus est-elle bleue ?",
//answers: ["Méthane dans l’atmosphère", "Eau liquide", "Nuages rouges"],
//correctAnswer: 0, picture: "uranus"),
//
//Question(question: "Combien Uranus possède-t-elle de lunes ?",
//answers: ["5", "27", "60"],
//correctAnswer: 1, picture: "uranus"),
//
//Question(question: "Quelle est la planète la plus éloignée du Soleil ?",
//answers: ["Saturne", "Neptune", "Mars"],
//correctAnswer: 1, picture: "neptune"),
//
//Question(question: "Où trouve-t-on les vents les plus rapides du système solaire ?",
//answers: ["Mars", "Terre", "Neptune"],
//correctAnswer: 2, picture: "neptune"),
//
//Question(question: "Quelle est la plus grande lune de Neptune ?",
//answers: ["Triton", "Titan", "Phobos"],
//correctAnswer: 0, picture: "neptune"),
//
//Question(question: "Combien y a-t-il de planètes dans le système solaire ?",
//answers: ["8", "9", "12"],
//correctAnswer: 0, picture: "ssolaire"),
//
//Question(question: "Quelle planète naine était autrefois considérée comme une planète ?",
//answers: ["Pluto", "Cérès", "Éris"],
//correctAnswer: 0,picture: "pluto"),
//
//Question(question: "Où se trouve la ceinture d’astéroïdes principale ?",
//answers: ["Entre Mercure et Vénus", "Entre Mars et Jupiter", "Entre Uranus et Neptune"],
//correctAnswer: 1, picture: "asteroides"),
//
//]
//
//
//
