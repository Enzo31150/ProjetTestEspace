//
//  ProfilTemplate.swift
//  ProjetEspace
//
//  Created by apprenant128 on 06/03/2026.
//

import SwiftUI

struct ProfilTemplate: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                Image("spacemarine") // AJOUTER DATA Profil-Image
                    .resizable()
                    .clipShape(.circle)
                    .frame(width: 180, height: 180)
                Text("Space Marine")
                    .font(Font.custom("ShareTechMono-Regular", size: 25))
                Spacer()
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    ProfilTemplate()
}
