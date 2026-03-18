//
//  SettingsColorTheme.swift
//  ProjetEspace
//
//  Created by apprenant128 on 12/03/2026.
//

import SwiftUI

struct SettingsColorTheme: View {
    
    func checkingSettingsTheme() {
        if settings.colorThemeOne == true {
            settings.colorThemeTwo = false
            settings.colorThemeThree = false
        } else if settings.colorThemeTwo == true {
            settings.colorThemeOne = false
            settings.colorThemeThree = false
        } else if settings.colorThemeThree == true {
            settings.colorThemeOne = false
            settings.colorThemeTwo = false
        } else {
            settings.colorThemeOne = false
            settings.colorThemeTwo = false
            settings.colorThemeThree = false
        }
    }
    
    @State var settings = userSettings
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 350, height: 200)
                .foregroundStyle(.specialBlack)
            HStack {
                Text("Thème de couleurs")
                    .font(Font.custom("ShareTechMono-Regular", size: 22))
                    .padding(.horizontal)
                VStack(spacing: 32) {
                    HStack {
                        Text("Thème 1")
                            .font(Font.custom("ShareTechMono-Regular", size: 18))
                        Toggle("", isOn: $settings.colorThemeOne)
                    }
                    HStack {
                        Text("Thème 2")
                            .font(Font.custom("ShareTechMono-Regular", size: 18))
                        Toggle("", isOn: $settings.colorThemeTwo)
                    }
                    HStack {
                        Text("Thème 3")
                            .font(Font.custom("ShareTechMono-Regular", size: 18))
                        Toggle("", isOn: $settings.colorThemeThree)
                    }
                }.toggleStyle(checkBoxStyle())
            }
        }
        .foregroundStyle(.white)
        Spacer()
    }
}

struct checkBoxStyle: ToggleStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        HStack{
            Image(systemName: configuration.isOn ? "checkmark.square.fill" : "square")
                .resizable()
                .frame(width:26, height:26)
                .foregroundStyle(configuration.isOn ? .green : .white)
                .onTapGesture {configuration.isOn.toggle()
                }; configuration.label
        }
    }
}

#Preview {
    SettingsColorTheme()
}
