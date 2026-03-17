//
//  QuizzCardView.swift
//  ProjetEspace
//
//  Created by Apprenant 109 on 10/03/2026.
//

import SwiftUI

struct QuizzCardView: View {
    
    var difficulty: Difficulty
    
//    var progress: Double {
//        Double(quizz.quizzProgress) / 20.0
//    }
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 12) {
            
            HStack {
                Text(difficulty.rawValue)
                    .font(Font.custom("ShareTechMono-Regular", size: 25))
                    .foregroundStyle(.white)
                
                Spacer()
                
                HStack {
                    ForEach(0..<5) { index in
                        Image(systemName: starType(index))
                            .foregroundStyle(.purple)
                    }
                }
            }
            
//            ProgressView(value: progress)
//                .tint(.purple)
            
            HStack {
                Spacer()
                
//                Text("\(quizz.quizzProgress)/20")
//                    .foregroundStyle(.white)
            }
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.specialBlack)
        )
        .padding(.horizontal)
    }
    
    func starType(_ index: Int) -> String {
        
        switch difficulty {
        case .beginer:
            return index < 1 ? "star.fill" : "star"
        case .intermediary:
            return index < 2 ? "star.fill" : "star"
        case .advanced:
            return index < 3 ? "star.fill" : "star"
        case .master:
            return index < 4 ? "star.fill" : "star"
        case .champion:
            return index < 5 ? "star.fill" : "star"
        }
    }
}

#Preview {
    QuizzCardView(difficulty: .beginer)
}
