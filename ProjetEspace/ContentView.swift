//
//  ContentView.swift
//  ProjetEspace
//
//  Created by apprenant128 on 12/03/2026.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab = 1
    var body: some View {
        NavigationStack {
            ZStack {
                Image("spaceBackground")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    
                    CalendarView()
                    
                    Spacer()
                    
                    CustomTabBar(selected: $selectedTab)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
