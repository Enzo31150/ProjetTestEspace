//
//  DetailUranus.swift
//  ProjetEspace
//
//  Created by Apprenant77 on 18/03/2026.
//

import SwiftUI

struct DetailUranus: View {
    
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
                Image("uranuspng")
                    .resizable()
                    .frame(width: 420, height: 280)
                
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(Color.black.opacity(0.65))
                        .padding(.vertical, 70)
                        .padding(.horizontal, 20)
                    
                    VStack(alignment: .leading){
                        Text("Uranus")
                            .font(.largeTitle)
                            .foregroundColor(.buttonPurple)
                            .padding(.horizontal, 30)
                        
                        Text("Uranus est la septième planète du système solaire par ordre d'éloignement du Soleil. Elle est reconnu pour être la planète de glaces.")
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
    DetailUranus()
}
