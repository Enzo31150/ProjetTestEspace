//
//  FondReponse.swift
//  ProjetEspace
//
//  Created by Leskeu  on 13/03/2026.
//

import SwiftUI

struct FondReponse: View {
    
    @State private var IsTapped = false
    @State private var IsTapped1 = false
    @State private var IsTapped2 = false
    @State private var IsTapped3 = false
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 40)
                    .frame(width: 350, height: 53)
                    .foregroundStyle( IsTapped1 ? .red : .specialBlack)
                Text("A cause de son atmosphère")
                    .foregroundStyle(.white)
                    .font(Font.custom("ShareTechMono-Regular", size: 15))
            }
            .onTapGesture {
                IsTapped1.toggle()
            }
            ZStack {
                RoundedRectangle(cornerRadius: 40)
                    .frame(width: 350, height: 53)
                    .foregroundStyle( IsTapped2 ? .red : .specialBlack)
                Text("A cause de la lave")
                    .foregroundStyle(.white)
                    .font(Font.custom("ShareTechMono-Regular", size: 15))
            }
            .onTapGesture {
                IsTapped2.toggle()
            }
            ZStack {
                RoundedRectangle(cornerRadius: 40)
                    .frame(width: 350, height: 53)
                    .foregroundStyle(.specialBlack)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color.buttonPurple,lineWidth: IsTapped ? 4 : 0))
                Text("A cause de l'oxyde de fer (rouille)")
                    .foregroundStyle(.white)
                    .font(Font.custom("ShareTechMono-Regular", size: 15))
                
            } .onTapGesture {
                IsTapped.toggle()
            }
            ZStack {
                RoundedRectangle(cornerRadius: 40)
                    .frame(width: 350, height: 53)
                    .foregroundStyle( IsTapped3 ? .red : .specialBlack)
                Text("A cause du sable")
                    .foregroundStyle(.white)
                    .font(Font.custom("ShareTechMono-Regular", size: 15))
            }
            .onTapGesture {
                IsTapped3.toggle()
            }
            
        }
    }
}

#Preview {
    FondReponse()
}
