//
//  Datas.swift
//  ProjetEspace
//
//  Created by Leskeu  on 04/03/2026.
//

import SwiftUI

struct ProfilResult: Codable {
    let results: [Profile]
}

class Profile: Codable, Identifiable {
    var id = UUID()
    var profileUsername: String
    var profilePicture: String
    var profileDescription: String
    var profilePoints: Int
    var profileLeaderboardPosition: Int
    var favorites: CelestialObject
    
    private enum CodingKeys: String, CodingKey {
        case profileUsername = "ProfilUsername"
        case profilePicture = "ProfilPicture"
        case profileDescription = "ProfilDescription"
        case profilePoints = "ProfilPoints"
        case profileLeaderboardPosition = "ProfilLeaderboardPosition"
        case favorites = "Favorites"
    }
    init(id: UUID = UUID(), profileUsername: String, profilePicture: String, profileDescription: String, profilePoints: Int, profileLeaderboardPosition: Int, favorites: CelestialObject) {
        self.id = id
        self.profileUsername = profileUsername
        self.profilePicture = profilePicture
        self.profileDescription = profileDescription
        self.profilePoints = profilePoints
        self.profileLeaderboardPosition = profileLeaderboardPosition
        self.favorites = favorites
    }
}

struct SettingsResult: Codable {
    let results: [Settings]
}

struct Settings: Identifiable, Codable {
    var id = UUID()
    var colorblindMode: Bool
    var calendarNotifications: Bool
    var colorThemes: Int
    var musicSlider: Int
    var soundSlider: Int
    
    private enum CodingsKeys: String, CodingKey {
        case colorblindMode = "ColorBlindMode"
        case calendarNotifications = "CalendarNotifications"
        case colorThemes = "ColorThemes"
        case musicSlider = "MusicSlider"
        case soundSlider = "SoundSlider"
    }
}



// Music Player à prévoir pour la V2?

struct QuizzResult: Codable {
    let results: [Quizz]
}

class Quizz: Identifiable, Codable {
    var id = UUID()
    var quizzName: String
    var quizzProgress: Int = 0
    var quizzDifficulty: Difficulty
    
    private enum CodingsKeys: String, CodingKey {
        case quizzName = "Quizz Name"
        case quizzProgress = "Quizz Progress"
        case quizzDifficulty = "Quizz Difficulty"
    }
    
    init(id: UUID = UUID(), quizzName: String, quizzProgress: Int, quizzDifficulty: Difficulty) {
        self.id = id
        self.quizzName = quizzName
        self.quizzProgress = quizzProgress
        self.quizzDifficulty = quizzDifficulty
    }
}

struct QuestionsAnswersResults: Codable {
    let results: [QuestionsAnswers]
}

struct QuestionsAnswers: Identifiable, Codable{
    var id = UUID()
    var Question: String
    var goodAnswer: String
    var Answer: [String]
    var inquizz: Quizz
    
    private enum CodingsKeys: String, CodingKey {
        case Question = "Questions"
        case goodAnswer = "GoodAnswer"
        case Answer = "Answers"
        case Inquizz = "InQuizz"
    }
}
struct CelestialObjectResponse: Codable {
    let results: [CelestialObject]
}

struct CelestialObject: Identifiable, Codable {
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var distancetoSun: String?
    var size: String
    var temp: Double
    var hasSatellites: Bool
    var satellites: String?
    
    private enum CodingKeys: String, CodingKey {
        case name
        case image = "Photos"
        case description = "text"
        case distancetoSun = "DistanceToSun"
        case size = "Taille (en rayon)"
        case temp = "Température moyenne"
        case hasSatellites = "HasSatellites"
        case satellites = "Satellites"
    }
}

struct EventsResponse: Codable {
    let results: [Events]
}

struct Events: Identifiable, Codable {
    var id = UUID()
    var eventName: String
    var eventImage: String
    var eventDate: Date
    var eventDescription: String
    
    private enum CodingsKeys: String, CodingKey {
        case eventName = "Name"
        case eventImage = "Image"
        case eventDate = "Date"
        case eventDescription = "Description"
        
    }
}

enum Difficulty: Codable {
    case beginner
    case intermediary
    case advanced
    case master
    case champion
}
