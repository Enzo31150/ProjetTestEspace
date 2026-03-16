//
//  FavoriteBottomBoard.swift
//  ProjetEspace
//
//  Created by apprenant128 on 13/03/2026.
//

import SwiftUI

struct FavoriteBottomBoard: View {
    var body: some View {
        NavigationStack {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 350, height: 400)
                    .foregroundStyle(.specialBlack)
                    .opacity(0.6)
                VStack {
                    Text("Mes favoris")
                        .font(Font.custom("ShareTechMono-Regular", size: 30))
                    HStack {
                        NavigationLink {
                            
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 15)
                                    .foregroundStyle(.buttonPurple)
                                    .frame(width: 150, height: 150)
                                    .opacity(0.6)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 16)
                                            .stroke(lineWidth: 4)
                                            .foregroundStyle(.specialBlack)
                                    )
                                VStack {
                                    Text("Saturne")
                                        .font(Font.custom("ShareTechMono-Regular", size: 24))
                                    Image("saturne") // AJOUTER DATA favori préféré objet céleste
                                        .resizable()
                                        .frame(width: 100, height: 70)
                                    Text("Planète")
                                        .font(Font.custom("ShareTechMono-Regular", size: 22))
                                }
                            }
                        }
                        NavigationLink {
                            
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 15)
                                    .foregroundStyle(.buttonPurple)
                                    .frame(width: 150, height: 150)
                                    .opacity(0.6)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 16)
                                            .stroke(lineWidth: 4)
                                            .foregroundStyle(.specialBlack)
                                    )
                                VStack {
                                    Text("Kepler-68 C")
                                        .font(Font.custom("ShareTechMono-Regular", size: 23))
                                    Image("kepler68C") // AJOUTER DATA favori préféré objet céleste
                                        .resizable()
                                        .frame(width: 70, height: 70)
                                    Text("Exoplanète")
                                        .font(Font.custom("ShareTechMono-Regular", size: 22))
                                }
                            }
                        }
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundStyle(.specialBlack)
                            .frame(width: 320, height: 150)
                            .opacity(0.9)
                        Text("Ajoutez plus de favoris en cliquant sur le Coeur en regardant les détails d'un objet céleste !")
                            .font(Font.custom("ShareTechMono-Regular", size: 20))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 30)
                    }
                }
            }
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    FavoriteBottomBoard()
}
