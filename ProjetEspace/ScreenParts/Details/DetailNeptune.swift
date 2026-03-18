//
//  DetailNeptune.swift
//  ProjetEspace
//
//  Created by Apprenant77 on 18/03/2026.
//

import SwiftUI

struct DetailNeptune: View {
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
                Image("neptunepng")
                    .resizable()
                    .frame(width: 350, height: 330)
                
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(Color.black.opacity(0.65))
                        .padding(.vertical, 40)
                        .padding(.horizontal, 10)
                    
                    VStack(alignment: .leading){
                        Text("Neptune")
                            .font(.largeTitle)
                            .foregroundColor(.buttonPurple)
                            .padding(.horizontal, 30)
                        
                        Text("Neptune est la huitième et dernière planète de notre système solaire par ordre d'éloignement du soleil. Comme Uranus, Neptune est reconnu pour être recouverte de glaces, mais c'est aussi la planète qui a été découverte la plus tard dans le système solaire, découverte par Alexis Bouvard au milieu du XIXe siècle, puis observé finalement par l'allemand Johann Gottfried le 23 septembre 1846.")
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
    DetailNeptune()
}
