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
                Image("saturnTek")
                    .resizable()
                    .frame(width: 360, height: 360)
                    .rotationEffect(Angle(degrees: 10))
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(Color.black.opacity(0.65))
                        .padding(15)
                    
                    VStack(alignment: .leading){
                        Text("Saturne")
                            .font(.largeTitle)
                            .foregroundColor(.buttonPurple)
                            .padding(.horizontal, 30)
                        
                        Text("Saturne est certainement la planète du système solaire la plus facilement identifiable, grâce à ses célèbres anneaux. C'est la deuxième plus grosse planète du système solaire et elle est deux fois plus éloignée du Soleil que Jupiter.")
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
    DetailView()
}
