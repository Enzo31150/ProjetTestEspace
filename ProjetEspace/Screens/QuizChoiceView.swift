//
//  QuizChoiceView.swift
//  ProjetEspace
//
//  Created by Apprenant 109 on 16/03/2026.
//

import SwiftUI

struct QuizChoiceView: View {
//    @State var viewModel = QuizzViewModels()
    var body: some View {
        NavigationStack {
            ZStack {
                Image("ciel-etoile")
                    .ignoresSafeArea()
                    .frame(width: 100, height: 100)
            }
            ScrollView {
                VStack {
//                    if viewModel.quizzs.isEmpty {
//                        ProgressView()
//                    } else {
                        ForEach(Difficulty.allCases) { difficulty in
                            NavigationLink {
                                ModelViewQuestionnaire( quiz: filteredQuestionbyDifficulty(difficulty: difficulty))
                            } label: {
                                QuizzCardView(difficulty: difficulty)
                                    .padding(.vertical)
                            }
                        }
                    }
                }
            }
//        }
//        .task {
//            do {
//                try await viewModel.fetchQuizzs()
//            } catch {
//                print("Erreur fetch:", error)
//            }
        }
    }

#Preview {
    QuizChoiceView()
}
