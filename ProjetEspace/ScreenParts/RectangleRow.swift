//
//  RectangleRow.swift
//  ProjetEspace
//
//  Created by Leskeu  on 12/03/2026.
//

import SwiftUI

struct RectangleRow: View {
    @Binding var profil : Profile
    @State var vmProfil = ProfilViewModels()
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .frame(width: 354, height: 53)
                .foregroundStyle(.specialBlack)
                .overlay(
                    RoundedRectangle(cornerRadius: 0)
                        .stroke(Color.buttonPurple,lineWidth: profil.profileLeaderboardPosition == 1 ? 4 : 0)
                    )
            HStack {
                Text(profil.profileLeaderboardPosition.description)
                    .foregroundStyle(.white)
                    .font(Font.custom("ShareTechMono-Regular", size: 13))
                    .frame(width: 40, alignment: .leading)
                
                if let urlString = profil.profilePicture.first?.url, let url = URL(string: urlString) {
                    AsyncImage(url: url) { image in
                        image
                            .resizable()
                            .clipShape(Circle())
                            .scaledToFill()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 33, height: 33)
                } else {
                    Image("spacemarine")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 33, height: 33)
                }
                
                Text(profil.profileUsername)
                    .font(Font.custom("ShareTechMono-Regular", size: 13))
                    .foregroundStyle(.white)
                    .lineLimit(1)
                    .layoutPriority(1)
                    .padding(.leading, 10)
                
                Spacer()
                
                Text(profil.profilePoints.description)
                    .font(Font.custom("ShareTechMono-Regular", size: 13))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.trailing)
                
            }
            .padding(.horizontal)
            .frame(width: 354, height: 53)
        }
    }
}

