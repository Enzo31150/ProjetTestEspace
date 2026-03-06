//
//  Datas.swift
//  ProjetEspace
//
//  Created by Leskeu  on 04/03/2026.
//

import SwiftUI

class Profile: Identifiable {
    var id = UUID()
    var profileUsername: String
    var profilePicture: String
    var profileDescription: String
    var profilePoints: Int
    var profileLeaderboardPosition: Int
    var hasFavorites: Bool
    var favorites: CelestialObjectDatas
    
    init(id: UUID = UUID(), profileUsername: String, profilePicture: String, profileDescription: String, profilePoints: Int, profileLeaderboardPosition: Int, hasFavorites: Bool, favorites: CelestialObjectDatas) {
        self.id = id
        self.profileUsername = profileUsername
        self.profilePicture = profilePicture
        self.profileDescription = profileDescription
        self.profilePoints = profilePoints
        self.profileLeaderboardPosition = profileLeaderboardPosition
        self.hasFavorites = hasFavorites
        self.favorites = favorites
    }
}

struct Settings: Identifiable {
    var id = UUID()
    var colorblindMode: Bool
    var calendarNotifications: Bool
    var colorThemes: Int
    var musicSlider: Int
    var soundSlider: Int
}
// Music Player à prévoir pour la V2?

class Quizz: Identifiable {
    var id = UUID()
    var quizzName: String
    var quizzProgress: Int = 0
    var quizzDifficulty: Difficulty
    
    init(id: UUID = UUID(), quizzName: String, quizzProgress: Int, quizzDifficulty: Difficulty) {
        self.id = id
        self.quizzName = quizzName
        self.quizzProgress = quizzProgress
        self.quizzDifficulty = quizzDifficulty
    }
}

struct QuestionsAnswers {
    var Question: String
    var goodAnswer: String
    var Answer: [String]
}

struct CelestialObjectDatas {
    var name: String
    var image: String
    var description: String
    var distancetoSun: String?
    var size: String
    var temp: Double
    var hasSatellites: Bool
    var satellites: String?
}

struct Events: Identifiable {
    var id = UUID()
    var eventName: String
    var eventImage: String
    var eventDate: Date
    var eventDescription: String
}

enum Difficulty {
    case beginner
    case intermediary
    case advanced
    case master
    case champion
}
