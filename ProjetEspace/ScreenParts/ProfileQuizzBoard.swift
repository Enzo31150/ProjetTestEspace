////
////  ProfileQuizzBoard.swift
////  ProjetEspace
////
////  Created by apprenant128 on 06/03/2026.
////
//
//import SwiftUI
//
//struct ProfileQuizzBoard: View {
//    var body: some View {
//        NavigationStack {
//            ZStack {
//                RoundedRectangle(cornerRadius: 20)
//                    .frame(width: 350, height: 180)
//                    .foregroundStyle(.specialBlack)
//                VStack {
//                    Text("Points Quizz")
//                        .font(Font.custom("ShareTechMono-Regular", size: 26))
//                    NavigationLink {
//                        ClassementView()
//                    } label: {
//                        ZStack {
//                            RoundedRectangle(cornerRadius: 16)
//                                .frame(width: 210, height: 120)
//                                .opacity(0.8)
//                                .foregroundStyle(.buttonPurple)
//                            VStack(spacing:10) {
//                                Text("142e Classement") // AJOUTER DATA Classement
//                                    .font(Font.custom("ShareTechMono-Regular", size: 18))
//                                Text("1997 points") // AJOUTER DATA Points Quizz
//                                    .font(Font.custom("ShareTechMono-Regular", size: 25))
//                                Text("Ce mois-ci")
//                                    .font(Font.custom("ShareTechMono-Regular", size: 22))
//                            }
//                        }
//                    }
//                }
//            }.foregroundStyle(.white)
//            
//        }
//    }
//}
//#Preview {
//    ProfileQuizzBoard()
//}
