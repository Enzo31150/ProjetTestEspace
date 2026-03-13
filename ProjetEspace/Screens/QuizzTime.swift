//
//  Quizz.swift
//  ProjetEspace
//
//  Created by Leskeu  on 10/03/2026.
//

import SwiftUI

//struct QuizzTime: View {
//    @Bindable var viewModelQuizz = QuizzViewModels()
//    var body: some View {
//        NavigationStack {
//            VStack {
//                ForEach(
//                    $viewModelQuizz.quizzs,
//                    id: \.quizzName
//                ) { $quizz in
//                    NavigationLink {
//                        QuestionView(quizz: $quizz)
//                    } label: {
//                        Text(quizz.quizzName)
//                    }
//                    
//                }
//            }.task {
//                do {
//                    try await viewModelQuizz.fetchQuizzs()
//                } catch {
//                    print(error)
//                }
//            }
//        }
//
//    }
//}
//
//#Preview {
//    QuizzTime()
//}
