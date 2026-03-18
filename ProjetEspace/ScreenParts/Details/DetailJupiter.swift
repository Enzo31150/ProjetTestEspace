//
//  DetailJupiter.swift
//  ProjetEspace
//
//  Created by Apprenant77 on 18/03/2026.
//

import SwiftUI

struct DetailJupiter: View {
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
                Image("jupiterpng")
                    .resizable()
                    .frame(width: 440, height: 260)
                
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(Color.black.opacity(0.65))
                        .padding(.vertical, 60)
                        .padding(.horizontal, 25)
                    
                    VStack(alignment: .leading){
                        Text("Jupiter")
                            .font(.largeTitle)
                            .foregroundColor(.buttonPurple)
                            .padding(.horizontal, 30)
                        
                        Text("Jupiter est la plus grande planète de notre Système solaire, et c'est aussi la première planète gazeuse par ordre d'éloignement du Soleil. ")
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
    DetailJupiter()
}
