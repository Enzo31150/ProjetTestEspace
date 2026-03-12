//
//  ContentView.swift
//  SpaceEvent
//
//  Created by Apprenant 78 on 10/03/2026.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab = 1
    
    var body: some View {
        
        ZStack{
            
            Image("spaceBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                
                CalendarView()
                
                Spacer()
                
                CustomTabBar(selected: $selectedTab)
            }
        }
    }
}

#Preview {
    ContentView()
}
