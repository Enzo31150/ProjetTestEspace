//
//  QuestionnaireView.swift
//  ProjetEspace
//
//  Created by Leskeu  on 13/03/2026.
//

import SwiftUI

struct QuestionnaireView: View {
    var body: some View {
        ZStack {
            Image("ciel-etoile")
                .ignoresSafeArea()
                .frame(width: 100, height: 100)
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundStyle(.specialBlack)
                    .frame(width: 370, height: 650)
                    .opacity(0.8)
                VStack(alignment: .leading, spacing: 12) {
                    Image("mars")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 300, height: 200)
                        .cornerRadius(20)
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    Text("Pourquoi Mars est appelée la planète rouge?")
                        .foregroundStyle(.white)
                        .font(Font.custom("ShareTechMono-Regular", size: 20))
                        .padding()
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    FondReponse()
                        .padding(.horizontal)
                    
                } .padding(.horizontal, 20)
                    .padding(.vertical, 16)
            }
            
        }
    }
}

#Preview {
    QuestionnaireView()
}
