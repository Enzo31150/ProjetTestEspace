//
//  ProfileFavoriteBoard.swift
//  ProjetEspace
//
//  Created by apprenant128 on 06/03/2026.
//

import SwiftUI

struct ProfileFavoriteBoard: View {
    @State var celestianVm = CelestialObjectViewModels()
    @Binding var profil: Profile
    @State var celestianfavorite: [CelestialObject] = []
    var body: some View {
        NavigationStack {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 350, height: 280)
                    .foregroundStyle(.specialBlack)
                VStack {
                    Text("Objet céleste préféré")
                        .font(Font.custom("ShareTechMono-Regular", size: 26))
                    if !celestianfavorite.isEmpty {
                        if let url = celestianfavorite[0].image.first?.thumbnails?.large?.url {
                                                AsyncImage(url: url) { image in
                                                    image
                                                        .resizable()
                                                        .clipShape(Circle())
                                                        .scaledToFill()
                                                } placeholder: {
                                                    ProgressView()
                                                }
                                                .frame(width: 100, height: 100)

                                            }else {
                                                Image(systemName : "person.crop.circle")
                                                    .font(.system(size: 100))
                                            }
                        Text(celestianfavorite[0].name) // AJOUTER DATA favori préféré objet céleste
                            .font(Font.custom("ShareTechMono-Regular", size: 20))
                    }
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
                if let favorites = profil.favorites {
                    for favid in favorites {
                        do {
                            let c = try await celestianVm.fetchCelestianById(id: favid)
                            celestianfavorite.append(c)
                        } catch {
                            print (error)
                        }
                    }
                }
            }
    }
}
