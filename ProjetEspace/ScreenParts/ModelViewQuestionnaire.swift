//
//  ModelViewQuestionnaire.swift
//  ProjetEspace
//
//  Created by Leskeu  on 16/03/2026.
//

import SwiftUI

struct ModelViewQuestionnaire: View {
    
    @State var indexAnswer : Int = 0
    @State var numberOfPoints = 0
    @State var disabled = false
    @State var isSelectedAnswer : Int? = nil
    
    var body: some View {
        ZStack {
            Image("ciel-etoile")
                .ignoresSafeArea()
                .frame(width: 100, height: 100)
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundStyle(.specialBlack)
                        .frame(width: 370, height: 680)
                        .opacity(0.8)
                    VStack(alignment: .leading, spacing: 12) {
                        Image(allQuestions[indexAnswer].picture)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 250, height: 200)
                            .cornerRadius(20)
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        Text("Question \(indexAnswer + 1)/\(allQuestions.count)")
                            .foregroundStyle(.white)
                            .font(Font.custom("ShareTechMono-Regular", size: 20))
                            .padding()
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        Text(allQuestions[indexAnswer].question)
                            .foregroundStyle(.white)
                            .font(Font.custom("ShareTechMono-Regular", size: 20))
                            .padding()
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        ForEach(allQuestions[indexAnswer].answers.enumerated(), id: \.offset) { index, answer in
                            
                            Button {
                                
                                isSelectedAnswer = index
                                disabled = true
                                
                                if isSelectedAnswer == allQuestions[indexAnswer].correctAnswer {
                                    numberOfPoints += 1
                                }
                                
                            } label: {
                                if isSelectedAnswer == nil {
                                    Text(answer)
                                        .frame(width: 350, height: 53)
                                        .background(.specialBlack)
                                        .foregroundStyle(.white)
                                        .font(Font.custom("ShareTechMono-Regular", size: 15))
                                        .cornerRadius(40)
                                        .multilineTextAlignment(.center)
                                        .frame(maxWidth: .infinity, alignment: .center)
                                } else {
                                    Text(answer)
                                        .frame(width: 350, height: 53)
                                        .background(index == allQuestions[indexAnswer].correctAnswer ? .buttonPurple : .red)
                                        .foregroundStyle(.white)
                                        .font(Font.custom("ShareTechMono-Regular", size: 15))
                                        .cornerRadius(40)
                                        .multilineTextAlignment(.center)
                                        .frame(maxWidth: .infinity, alignment: .center)
                                }
                            }
                            .disabled(disabled)
                        }
                        
                        if isSelectedAnswer != allQuestions[indexAnswer].correctAnswer && isSelectedAnswer != nil {
                            Text("Mauvaise réponse")
                                .font(Font.custom("ShareTechMono-Regular", size: 15))
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity, alignment: .center)
                            
                        } else if isSelectedAnswer != nil {
                            Text("Bonne réponse")
                                .font(Font.custom("ShareTechMono-Regular", size: 15))
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity, alignment: .center)
                        } else {
                            Text(" ")
                                .font(Font.custom("ShareTechMono-Regular", size: 15))
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity, alignment: .center)
                        }
                        Text("\(numberOfPoints) points")
                            .frame(width: 80, height: 53)
                            .background(.specialBlack)
                            .foregroundStyle(.white)
                            .font(Font.custom("ShareTechMono-Regular", size: 15))
                            .cornerRadius(40)
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                    }
                } .padding(.horizontal, 20)
                    .padding(.vertical, 16)
                
                Button {
                    if indexAnswer < 29 {
                        indexAnswer += 1
                    }
                    isSelectedAnswer = nil
                    disabled = false
                } label: {
                    Text("Question Suivante")
                        .frame(width: 200, height: 53)
                        .background(.specialBlack)
                        .foregroundStyle(.white)
                        .font(Font.custom("ShareTechMono-Regular", size: 15))
                        .cornerRadius(40)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
            }
        }
    }
}

#Preview {
    ModelViewQuestionnaire ()
}
