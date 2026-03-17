//
//  ContentView.swift
//  SpaceEvent
//
//  Created by Apprenant 78 on 10/03/2026.
//

import SwiftUI

struct CalendarView: View {
    
    var body: some View {
        
        ZStack{
            Image("spaceBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            CalendarPart()
            
        }
    }
}

#Preview {
    CalendarView()
}
