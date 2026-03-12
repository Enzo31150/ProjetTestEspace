//
//  SettingsTop.swift
//  ProjetEspace
//
//  Created by apprenant128 on 12/03/2026.
//

import SwiftUI

struct SettingsTop: View {
    @State var settings = userSettings
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 350, height: 130)
                    .foregroundStyle(.specialBlack)
                HStack {
                    Text("Mode Daltonien")
                        .font(Font.custom("ShareTechMono-Regular", size: 26))
                    Toggle(isOn: $settings.colorblindMode) {
                        Text("")
                    }
                }
                .padding(.horizontal, 35)
            }
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 350, height: 130)
                    .foregroundStyle(.specialBlack)
                HStack {
                    Text("Notifications Calendrier")
                        .font(Font.custom("ShareTechMono-Regular", size: 20))
                    Toggle("", isOn: $settings.calendarNotifications)
                }
                .padding(.horizontal, 35)
            }
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    SettingsTop()
}
