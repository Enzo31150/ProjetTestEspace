//
//  SettingsMainTemplate.swift
//  ProjetEspace
//
//  Created by apprenant128 on 11/03/2026.
//

import SwiftUI

struct SettingsMainTemplate: View {
    @State var settings = userSettings
    var body: some View {
        ZStack {
            Image("ciel-etoile")
                .ignoresSafeArea()
                .frame(width: 100, height: 100)
            VStack {
                //LES SETTINGS DANS L'ORDRE
                SettingsTop()
                SettingsColorTheme()
                SettingsSliders()
                Spacer()
            }.padding(.top, 20)
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    SettingsMainTemplate()
}
