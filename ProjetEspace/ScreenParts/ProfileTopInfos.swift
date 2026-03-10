//
//  ProfileTopInfos.swift
//  ProjetEspace
//
//  Created by apprenant128 on 06/03/2026.
//

import SwiftUI

struct ProfileTopInfos: View {
    var body: some View {
        VStack(spacing:16) {
            Image("spacemarine") // AJOUTER DATA Profil-Image
                .resizable()
                .clipShape(.circle)
                .frame(width: 180, height: 180)
            Text("Space Marine") // AJOUTER DATA Profil-Name
                .font(Font.custom("ShareTechMono-Regular", size: 25))
            Text("Quizz Enjoyer") // AJOUTER DATA Profil-Role
                .font(Font.custom("ShareTechMono-Regular", size: 18))
            Text("J'aime le lait et les biscuits. Et passer mon temps à faire des quizz.")
                .font(Font.custom("ShareTechMono-Regular", size: 16))
                .padding(.leading, 40)
                .padding(.trailing, 40)
        }.foregroundStyle(.white)
    }
}

#Preview {
    ProfileTopInfos()
}
