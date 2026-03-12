//
//  Datas.swift
//  ProjetEspace
//
//  Created by Leskeu  on 04/03/2026.
//

import SwiftUI
import Observation

struct ProfilResponse: Codable {
    let records: [ProfilResult]
}

struct ProfilResult: Codable {
    let fields: Profile
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

@Observable
class Settings: Identifiable {
    var id = UUID()
    var colorblindMode: Bool
    var calendarNotifications: Bool
    var colorThemeOne: Bool
    var colorThemeTwo: Bool
    var colorThemeThree: Bool
    var musicSlider: Double
    var soundSlider: Double
    
    init(id: UUID = UUID(), colorblindMode: Bool, calendarNotifications: Bool, colorThemeOne: Bool, colorThemeTwo: Bool, colorThemeThree: Bool, musicSlider: Double, soundSlider: Double) {
        self.id = id
        self.colorblindMode = colorblindMode
        self.calendarNotifications = calendarNotifications
        self.colorThemeOne = colorThemeOne
        self.colorThemeTwo = colorThemeTwo
        self.colorThemeThree = colorThemeThree
        self.musicSlider = musicSlider
        self.soundSlider = soundSlider
    }
}

var userSettings = Settings(colorblindMode: false, calendarNotifications: true, colorThemeOne: true, colorThemeTwo: false, colorThemeThree: false, musicSlider: 0, soundSlider: 100)


// Music Player à prévoir pour la V2?

struct QuizzResponse: Codable {
    let records: [QuizzResult]
}

struct QuizzResult: Codable {
    let fields: Quizz
}

class Quizz: Codable {
    var quizzName: String
    var quizzProgress: Int = 0
    var quizzDifficulty: Difficulty
    var questions: [String]
    
    init(quizzName: String, quizzProgress: Int, quizzDifficulty: Difficulty, questions: [String] = []) {
        self.quizzName = quizzName
        self.quizzProgress = quizzProgress
        self.quizzDifficulty = quizzDifficulty
        self.questions = questions
    }
}

struct QuestionsResponse: Codable {
    let records: [QuestionsResult]
}

struct QuestionsResult: Codable {
    let fields: Questions
}

struct Questions: Codable{
    var question: String
    var answers: [String]

}
struct AnswersResult: Codable {
    let fields: Answers
}

struct Answers: Codable{
    var isGood: Bool
    var nameanswers: String

}
struct CelestialObjectResponse: Codable {
    let results: [CelestialObjectResult]
}

struct CelestialObjectResult: Codable {
    let fields: CelestialObject
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
    let results: [EventsResult]
}

struct EventsResult: Codable {
    let fields: Events
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

enum Difficulty: String, Codable {
    case beginner = "Beginner"
    case intermediary = "Intermediary"
    case advanced = "Advanced"
    case master = "Master"
    case champion = "Champion"
}
