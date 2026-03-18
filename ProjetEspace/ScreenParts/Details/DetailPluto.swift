//
//  DetailPluto.swift
//  ProjetEspace
//
//  Created by Apprenant77 on 18/03/2026.
//

import SwiftUI

struct DetailPluto: View {
    @State var isLiked: Bool = false
    
    var body: some View {
       
        
        ZStack{
            
            Image("ciel-etoile")
                .ignoresSafeArea()
                .frame(width: 100, height: 100)
            
            VStack{
                HStack{
                    Spacer()
                    if isLiked{
                        Image(systemName: "heart.fill")
                            .foregroundColor(.buttonPurple)
                            .font(.system(size: 40))
                            .onTapGesture {
                                self.isLiked.toggle()
                                        }
                    }else{
                        
                        Image(systemName: "heart")
                            .foregroundColor(.buttonPurple)
                            .font(.system(size: 40))
                            .onTapGesture {
                                self.isLiked.toggle()
                                        }
                    }
                }
                .padding(.horizontal)
                Image("plutopng")
                    .resizable()
                    .frame(width: 280, height: 280)
                
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(Color.black.opacity(0.65))
                        .padding(.vertical, 50)
                        .padding(.horizontal, 10)
                    
                    VStack(alignment: .leading){
                        Text("Pluton")
                            .font(.largeTitle)
                            .foregroundColor(.buttonPurple)
                            .padding(.horizontal, 30)
                        
                        Text("Pluton était la dernière planète de notre Système solaire, elle était la plus petite et est reconnu pour avoir une géographie chaotique dû par sa proximité avec une ceinture d'astéroïdes. Elle ne fut plus reconnu comme une planète à proprement parler à cause de la découverte d'autres planètes naines un peu plus grande qu'elle, et fut classé comme une planète naine en 2006.")
                            .foregroundColor(.white)
                            .padding(.vertical, -5)
                            .padding(.horizontal, 30)
                    }
                }
            }
            
        }
        
    }
}

#Preview {
    DetailPluto()
}
