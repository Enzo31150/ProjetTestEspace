//
//  LendingScreenView.swift
//  ProjetEspace
//
//  Created by Leskeu  on 17/03/2026.
//

import SwiftUI

struct LendingScreenView: View {
    var body: some View {
            TabView {
                PlanetObservationScreen()
                   .tabItem{
                     Label( "Oberservation", systemImage: "moon.stars.fill")
                    }
                CalendarView()
                    .tabItem{
                        Label( "Calendrier", systemImage: "calendar"  )
                        }
               QuizChoiceView()
                   .tabItem{
                       Label( "Quizz", systemImage: "lightbulb" )
                      }
               ProfileMainTemplate(profil: .constant(Profile(profileUsername: "Space Marine", profilePicture: [], profileDescription: "J'aime les biscuits, et je n'ai pas d'image de profil.", profilePoints: 1997, profileLeaderboardPosition: 142)))
                 .tabItem{
                        Label( "Profil", systemImage: "person.crop.circle.fill" )
                    }
            } .tint(.buttonPurple)
    }
}

#Preview {
    LendingScreenView()
}
