//
//  detailView.swift
//  ProjetEspace
//
//  Created by Apprenant77 on 17/03/2026.
//


//
//  detailView.swift
//  ProjetEspace
//
//  Created by Tekures on 11/03/2026.
//

import SwiftUI

struct DetailView: View {
    
    @State var isLiked: Bool = false
    
    var planet : Planett
    
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
                Image(planet.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 300, height: 300)
                    .rotationEffect(Angle(degrees: 10))
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(Color.black.opacity(0.65))
                        .padding(.vertical, 30)
                        .padding(.horizontal, 15)
                    
                    VStack(alignment: .leading){
                        Text(planet.name)
                            .font(.largeTitle)
                            .foregroundColor(.buttonPurple)
                            .padding(.horizontal, 30)
                        
                        Text(planet.description)
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
    DetailView(planet: planets[0])
}
