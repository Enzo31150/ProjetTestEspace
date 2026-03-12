//
//  SettingsSliders.swift
//  ProjetEspace
//
//  Created by apprenant128 on 12/03/2026.
//

import SwiftUI

struct SettingsSliders: View {
    @State var settings = userSettings
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 350, height: 100)
                    .foregroundStyle(.specialBlack)
                VStack {
                    Text("Musique : \(Int(settings.musicSlider))")
                        .font(Font.custom("ShareTechMono-Regular", size: 18))
                    Slider(value: $settings.musicSlider, in: 0...100)
                } .padding(.horizontal, 40)
            }
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 350, height: 100)
                    .foregroundStyle(.specialBlack)
                VStack {
                    Text("Son : \(Int(settings.soundSlider))")
                        .font(Font.custom("ShareTechMono-Regular", size: 18))
                    Slider(value: $settings.soundSlider, in: 0...100)
                } .padding(.horizontal, 40)
            }
        }.foregroundStyle(.white)
    }
}

#Preview {
    SettingsSliders()
}
