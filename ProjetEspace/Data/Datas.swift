//
//  Model.swift
//  ProjetEspace
//
//  Created by Leskeu  on 04/03/2026.
//

import SwiftUI

struct Profile: Identifiable {
    var id = UUID()
    var profileUsername: String
    var profilePicture: Image
    var profileDescription: String
    var profilePoints: Int
    var profileLeaderboardPosition: Int
    var hasFavorites: Bool
    var favorites: CelestialObject
}

struct Settings: Identifiable {
    var id = UUID()
    var colorblindMode: Bool
    var calendarNotifications: Bool
    var colorThemes: Int
    var musicSlider: Int
    var soundSlider: Int
}

class Quizz: Identifiable {
    var id = UUID()
    var quizzName: Quizzes
    var quizzProgress: Int = 0
    var quizzDifficulty: Difficulty
    
    init(id: UUID = UUID(), quizzName: Quizzes, quizzProgress: Int, quizzDifficulty: Difficulty) {
        self.id = id
        self.quizzName = quizzName
        self.quizzProgress = quizzProgress
        self.quizzDifficulty = quizzDifficulty
    }
}

struct QuestionsAnswers {
    var Question: Questions
    var Answer: Answers
}

struct CelestialObjectDatas {
    var name: CelestialObject
    var image: Image
    var description: String
    var distancetoSun: String
    var size: String
    var temp: Double
    var hasSatellites: Bool
    var satellites: String?
}

struct Events: Identifiable {
    var id = UUID()
    var eventName: Event
    var eventImage: Image
    var eventDate: Date
    var eventDescription: String
}


enum Quizzes: String {
    case quizz1 = "Tutoriel"
    case quizz2 = "Le commencement"
    case quizz3 = "Quizz avancé"
}

enum Questions {
    case question
}

enum Answers {
    case answer1
    case answer2
    case answer3
    case answer4
    case answer5
    case answer6
}

enum Difficulty {
    case beginner
    case intermediary
    case advanced
    case master
    case champion
}

enum Event: String {
    case event1 = "Pluie de météorites"
    case event2 = "Festival Astronomie"
    case event3 = "Eclipse Solaire"
    case event4 = "Eclipse Lunaire"
}

enum CelestialObject: CaseIterable {
    case sun
    case mercury
    case venus
    case earth
    case mars
    case jupiter
    case saturn
    case uranus
    case neptune
    case pluto
}
