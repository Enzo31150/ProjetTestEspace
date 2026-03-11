//
//  RectangleClassement.swift
//  ProjetEspace
//
//  Created by Leskeu  on 11/03/2026.
//

import SwiftUI

struct RectangleClassement: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .frame(width: 354, height: 53)
                .foregroundStyle(.specialBlack)
                .overlay(
                    RoundedRectangle(cornerRadius: 0)
                        .stroke(Color.buttonPurple,lineWidth: 4)
                    )
            HStack {
                Text("142")
                    .foregroundStyle(.white)
                    .font(Font.custom("ShareTechMono-Regular", size: 13))
                    .frame(width: 40, alignment: .leading)
                Image("spacemarine")
                    .resizable()
                    .clipShape(.circle)
                    .frame(width: 33, height: 33)
                Text("QuantumFury")
                    .font(Font.custom("ShareTechMono-Regular", size: 13))
                    .foregroundStyle(.white)
                    .lineLimit(1)
                    .layoutPriority(1)
                    .padding(.leading, 10)
                
                Spacer()
                
                Text("1997 pts.")
                    .font(Font.custom("ShareTechMono-Regular", size: 13))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.trailing)
                
            } .padding(.horizontal)
                .frame(width: 354, height: 53)
        }
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .frame(width: 354, height: 53)
                .foregroundStyle(.specialBlack)
            HStack {
                Text("1")
                    .foregroundStyle(.white)
                    .font(Font.custom("ShareTechMono-Regular", size: 13))
                    .frame(width: 40, alignment: .leading)
                Image("moon")
                    .resizable()
                    .clipShape(.circle)
                    .frame(width: 33, height: 33)
                Text("NovaRookie")
                    .font(Font.custom("ShareTechMono-Regular", size: 13))
                    .foregroundStyle(.white)
                    .lineLimit(1)
                    .layoutPriority(1)
                    .padding(.leading, 10)
                
                Spacer()
                
                Text("5789 pts.")
                    .font(Font.custom("ShareTechMono-Regular", size: 13))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.trailing)
                
            } .padding(.horizontal)
                .frame(width: 354, height: 53)
        }
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .frame(width: 354, height: 53)
                .foregroundStyle(.specialBlack)
            HStack {
                Text("2")
                    .foregroundStyle(.white)
                    .font(Font.custom("ShareTechMono-Regular", size: 13))
                    .frame(width: 40, alignment: .leading)
                Image("cat")
                    .resizable()
                    .clipShape(.circle)
                    .frame(width: 33, height: 33)
                Text("AstroBlaze")
                    .font(Font.custom("ShareTechMono-Regular", size: 13))
                    .foregroundStyle(.white)
                    .lineLimit(1)
                    .layoutPriority(1)
                    .padding(.leading, 10)
                
                Spacer()
                
                Text("5642 pts.")
                    .font(Font.custom("ShareTechMono-Regular", size: 13))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.trailing)
                
            } .padding(.horizontal)
                .frame(width: 354, height: 53)
        }
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .frame(width: 354, height: 53)
                .foregroundStyle(.specialBlack)
            HStack {
                Text("3")
                    .foregroundStyle(.white)
                    .font(Font.custom("ShareTechMono-Regular", size: 13))
                    .frame(width: 40, alignment: .leading)
                Image("funny")
                    .resizable()
                    .clipShape(.circle)
                    .frame(width: 33, height: 33)
                Text("ShadowComet")
                    .font(Font.custom("ShareTechMono-Regular", size: 13))
                    .foregroundStyle(.white)
                    .lineLimit(1)
                    .layoutPriority(1)
                    .padding(.leading, 10)
                
                Spacer()
                
                Text("5442 pts.")
                    .font(Font.custom("ShareTechMono-Regular", size: 13))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.trailing)
                
            } .padding(.horizontal)
                .frame(width: 354, height: 53)
        }
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .frame(width: 354, height: 53)
                .foregroundStyle(.specialBlack)
            HStack {
                Text("4")
                    .foregroundStyle(.white)
                    .font(Font.custom("ShareTechMono-Regular", size: 13))
                    .frame(width: 40, alignment: .leading)
                Image("skull")
                    .resizable()
                    .clipShape(.circle)
                    .frame(width: 33, height: 33)
                Text("StellarPhantom")
                    .font(Font.custom("ShareTechMono-Regular", size: 13))
                    .foregroundStyle(.white)
                    .lineLimit(1)
                    .layoutPriority(1)
                    .padding(.leading, 10)
                
                Spacer()
                
                Text("5256 pts.")
                    .font(Font.custom("ShareTechMono-Regular", size: 13))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.trailing)
                
            } .padding(.horizontal)
                .frame(width: 354, height: 53)
        }
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .frame(width: 354, height: 53)
                .foregroundStyle(.specialBlack)
            HStack {
                Text("5")
                    .foregroundStyle(.white)
                    .font(Font.custom("ShareTechMono-Regular", size: 13))
                    .frame(width: 40, alignment: .leading)
                Image("ayoub")
                    .resizable()
                    .clipShape(.circle)
                    .frame(width: 33, height: 33)
                Text("GalacticOverlord")
                    .font(Font.custom("ShareTechMono-Regular", size: 13))
                    .foregroundStyle(.white)
                    .lineLimit(1)
                    .layoutPriority(1)
                    .padding(.leading, 10)
                
                Spacer()
                
                Text("5642 pts.")
                    .font(Font.custom("ShareTechMono-Regular", size: 13))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.trailing)
                
            } .padding(.horizontal)
                .frame(width: 354, height: 53)
        }
    }
}

#Preview {
    RectangleClassement()
}
