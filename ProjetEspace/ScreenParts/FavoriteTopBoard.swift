//
//  FavoriteTopBoard.swift
//  ProjetEspace
//
//  Created by apprenant128 on 13/03/2026.
//

import SwiftUI

struct FavoriteTopBoard: View {
    var body: some View {
        NavigationStack {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 350, height: 280)
                    .foregroundStyle(.specialBlack)
                    .opacity(0.6)
                VStack {
                    Text("Objet céleste préféré")
                        .font(Font.custom("ShareTechMono-Regular", size: 23))
                    NavigationLink {
                        // ICI ECRAN OBSERVATION VERS DETAILS DE L'ETOILE
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 150, height: 150)
                                .foregroundStyle(.buttonPurple)
                                .opacity(0.8)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(lineWidth: 4)
                                        .foregroundStyle(.specialBlack)
                                )
                            VStack {
                                Image("placeholderSun") // AJOUTER DATA favori préféré objet céleste
                                    .resizable()
                                    .frame(width: 95, height: 90)
                                Text("Le Soleil") // AJOUTER DATA favori préféré objet céleste
                                    .font(Font.custom("ShareTechMono-Regular", size: 25))
                            }
                        }
                    }
                    Button {
                        // ICI SELECTION DES FAVORIS POUR EN DEVENIR UN PREFERE
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 250, height: 40)
                                .foregroundStyle(.buttonPurple)
                                .opacity(0.8)
                            Text("Sélectionnez un autre préféré")
                                .font(Font.custom("ShareTechMono-Regular", size: 15))
                        }
                    }
                }
            }
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    FavoriteTopBoard()
}
