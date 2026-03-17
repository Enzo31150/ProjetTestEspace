//
//  ProfileMainTemplate.swift
//  ProjetEspace
//
//  Created by apprenant128 on 06/03/2026.
//

import SwiftUI

struct ProfileMainTemplate: View {
    @Binding var profil : Profile
    var body: some View {
        NavigationStack {
            ZStack {
                Image("ciel-etoile")
                    .ignoresSafeArea()
                    .frame(width: 100, height: 100)
                VStack {
                    HStack {
                        Spacer()
                        NavigationLink {
                            SettingsMainTemplate()
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 15)
                                    .foregroundStyle(.buttonPurple)
                                    .frame(width: 40, height: 40)
                                    .opacity(0.8)
                                Image(systemName: "gearshape.fill")
                                    .foregroundStyle(.white)
                            }
                        }
                        
                    }.padding(.trailing, 16)
                    ScrollView(showsIndicators: false) {
                        //LE PROFIL DANS L'ORDRE
                        ProfileTopInfos(profil: $profil)
                        ProfileFavoriteBoard(profil: $profil)
                    }.padding(.top, 1)
                    Spacer()
                }
                .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    ProfileMainTemplate(profil: .constant(Profile(profileUsername: "Space Marine", profilePicture: [], profileDescription: "J'aime les biscuits, et je n'ai pas d'image de profil.", profilePoints: 1997, profileLeaderboardPosition: 142)))
}
