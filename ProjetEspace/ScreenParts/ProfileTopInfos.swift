//
//  ProfileTopInfos.swift
//  ProjetEspace
//
//  Created by apprenant128 on 06/03/2026.
//

import SwiftUI

struct ProfileTopInfos: View {
    @Bindable var vmProfile = ProfilViewModels()
    @State var profilPicture: Profile
    
    var body: some View {
        NavigationStack {
        VStack(spacing:16) {
//            List(vmProfile.profils) {profile in
//                if let urlString = profile.profilePicture.first?.url, let url = URL(string: urlString) {
//                    AsyncImage(url: url) { image in
//                        image
//                            .resizable()
//                            .clipShape(Circle())
//                            .scaledToFill()
//                    } placeholder: {
//                        ProgressView()
//                    }
//                    .frame(width: 100, height: 100)
//                    
//                } else {
//                    Image(systemName : "person.crop.circle")
//                        .font(.system(size: 100))
//                }
//            }
            Image("spacemarine")
            .resizable()
            .clipShape(Circle())
            .scaledToFill()
            .frame(width: 150, height: 150)
            Text(profilPicture.profileUsername) // AJOUTER DATA Profil-Name
                .font(Font.custom("ShareTechMono-Regular", size: 25))
            Text("Quizz Enjoyer")
                .font(Font.custom("ShareTechMono-Regular", size: 18))
            Text(profilPicture.profileDescription)
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
                                Text("\(profilPicture.profileLeaderboardPosition)e Classement") // AJOUTER DATA Classement
                                    .font(Font.custom("ShareTechMono-Regular", size: 18))
                                Text("\(profilPicture.profilePoints.description) points") // AJOUTER DATA Points Quizz
                                    .font(Font.custom("ShareTechMono-Regular", size: 25))
                                Text("Ce mois-ci")
                                    .font(Font.custom("ShareTechMono-Regular", size: 22))
                            }
                        }
                    }
                }
            }.foregroundStyle(.white)
            
        }.foregroundStyle(.white)
            .task {
                do {
                    try await vmProfile.fetchProfils()
                } catch {
                    print(error)
                }
            }
    }
}

#Preview {
    ProfileTopInfos(profilPicture: Profile(profileUsername: "a", profilePicture: [], profileDescription: "a", profilePoints: 1997, profileLeaderboardPosition: 193))
}
