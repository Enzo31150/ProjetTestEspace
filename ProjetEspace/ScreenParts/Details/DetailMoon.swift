//
//  DetailMoon.swift
//  ProjetEspace
//
//  Created by Apprenant77 on 18/03/2026.
//

import SwiftUI

struct DetailMoon: View {
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
                Image("newmoonpng")
                    .resizable()
                    .frame(width: 340, height: 330)
                
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(Color.black.opacity(0.65))
                        .padding(.vertical, 40)
                        .padding(.horizontal, 15)
                    
                    VStack(alignment: .leading){
                        Text("Lune")
                            .font(.largeTitle)
                            .foregroundColor(.buttonPurple)
                            .padding(.horizontal, 30)
                        
                        Text("La Lune est le seul astre, en dehors de la Terre, sur lequel des humains ont marché. Lors de la mission Apollo 11 en 1969, Neil Armstrong y a laissé la première empreinte humaine. Fait surprenant : ces empreintes pourraient rester intactes pendant des millions d’années, car la Lune ne possède ni atmosphère ni vent pour les effacer.")
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
    DetailMoon()
}
