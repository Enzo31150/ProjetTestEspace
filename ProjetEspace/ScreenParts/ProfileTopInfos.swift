//
//  ProfileTopInfos.swift
//  ProjetEspace
//
//  Created by apprenant128 on 06/03/2026.
//

import SwiftUI

struct ProfileTopInfos: View {
    @Binding var profil: Profile
    
    var body: some View {
        NavigationStack {
        VStack(spacing:16) {
            if let urlString = profil.profilePicture.first?.url {
                AsyncImage(url: URL(string: urlString)) { image in
                        image
                            .resizable()
                            .clipShape(Circle())
                            .scaledToFill()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 150, height: 150)
                    
                } else {
                    Image(systemName : "person.crop.circle")
                        .font(.system(size: 100))

                }
//            Image("spacemarine")
//            .resizable()
//            .clipShape(Circle())
//            .scaledToFill()
//            .frame(width: 150, height: 150)
            Text(profil.profileUsername) // AJOUTER DATA Profil-Name
                .font(Font.custom("ShareTechMono-Regular", size: 25))
            Text("Quizz Enjoyer")
                .font(Font.custom("ShareTechMono-Regular", size: 18))
            Text(profil.profileDescription)
                .font(Font.custom("ShareTechMono-Regular", size: 16))
                .padding(.leading, 40)
                .padding(.trailing, 40)
        }
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 350, height: 180)
                    .foregroundStyle(.specialBlack)
                VStack {
                    Text("Points Quizz")
                        .font(Font.custom("ShareTechMono-Regular", size: 26))
                    NavigationLink {
                        ClassementView()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 16)
                                .frame(width: 210, height: 120)
                                .opacity(0.8)
                                .foregroundStyle(.buttonPurple)
                            VStack(spacing:10) {
                                Text("\(profil.profileLeaderboardPosition)e Classement") // AJOUTER DATA Classement
                                    .font(Font.custom("ShareTechMono-Regular", size: 18))
                                Text("\(profil.profilePoints.description) points") // AJOUTER DATA Points Quizz
                                    .font(Font.custom("ShareTechMono-Regular", size: 25))
                                Text("Ce mois-ci")
                                    .font(Font.custom("ShareTechMono-Regular", size: 22))
                            }
                        }
                    }
                }
            }.foregroundStyle(.white)
            
        }.foregroundStyle(.white)
    }
}

#Preview {
    ProfileTopInfos(profil: .constant(Profile(profileUsername: "a", profilePicture: [], profileDescription: "a", profilePoints: 1997, profileLeaderboardPosition: 193)))
}
