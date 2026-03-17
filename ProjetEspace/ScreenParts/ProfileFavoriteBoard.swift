//
//  ProfileFavoriteBoard.swift
//  ProjetEspace
//
//  Created by apprenant128 on 06/03/2026.
//

import SwiftUI

struct ProfileFavoriteBoard: View {
    @Bindable var vmProfile = ProfilViewModels()
    var body: some View {
        NavigationStack {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 350, height: 280)
                    .foregroundStyle(.specialBlack)
                VStack {
                    Text("Objet céleste préféré")
                        .font(Font.custom("ShareTechMono-Regular", size: 26))
                    Image("placeholderSun") // AJOUTER DATA favori préféré objet céleste
                        .resizable()
                        .frame(width: 95, height: 90)
                    Text("Le Soleil") // AJOUTER DATA favori préféré objet céleste
                        .font(Font.custom("ShareTechMono-Regular", size: 20))
                    NavigationLink {
                        FavoriteMainTemplate()
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 16)
                                .frame(width: 210, height: 70)
                                .opacity(0.8)
                                .foregroundStyle(.buttonPurple)
                            VStack(spacing:10) {
                                Text("Voir les favoris") // AJOUTER DATA Points Quizz
                                    .font(Font.custom("ShareTechMono-Regular", size: 22))
                            }
                        }
                    }
                }
            }
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
    ProfileFavoriteBoard()
}
