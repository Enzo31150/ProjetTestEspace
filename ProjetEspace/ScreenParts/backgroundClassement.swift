//
//  backgroundClassement.swift
//  ProjetEspace
//
//  Created by Leskeu  on 11/03/2026.
//

import SwiftUI

struct backgroundClassement: View {
    var body: some View {
        VStack {
            Image("spacemarine")
                .resizable()
                .clipShape(.circle)
                .frame(width: 150, height: 150)
           // ZStack {
//                RoundedRectangle(cornerRadius: 0)
//                    .frame(width: 350, height: 160)
//                    .foregroundStyle(.specialBlack)
//                    .opacity(0.8)
                VStack {
                    Text("142 ème")
                        .font(Font.custom("ShareTechMono-Regular", size: 40))
                        .foregroundStyle(.specialBlack)
                        .overlay(
                            Text("142 ème")
                                .font(Font.custom("ShareTechMono-Regular", size: 40))
                                .foregroundStyle(.white)
                                .offset(x: 2, y: 2)
                            )
                    Text("1997 pts")
                        .font(Font.custom("ShareTechMono-Regular", size: 30))
                        .foregroundStyle(.white)
                }
            //}
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .frame(width: 350, height: 100)
                    .foregroundStyle(.specialBlack)
                    .opacity(0.8)
                VStack {
                    Text("Classement")
                        .font(Font.custom("ShareTechMono-Regular", size: 24))
                        .foregroundStyle(.white)
                    Text("Fin dans : 19 jours")
                        .font(Font.custom("ShareTechMono-Regular", size: 15))
                        .foregroundStyle(.white)
                        .padding(.vertical, 2)
                }
            }
            
            
            
        }
    }
}

#Preview {
    backgroundClassement()
}
