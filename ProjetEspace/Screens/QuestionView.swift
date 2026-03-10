//
//  QuestionView.swift
//  ProjetEspace
//
//  Created by Leskeu  on 10/03/2026.
//

import SwiftUI

struct QuestionView: View {
    @Binding var quizz: Quizz
    @State var vmQuestion = QuestionsViewModels()
    @State var listQuestions: [Questions] = []
    var body: some View {
        VStack {
            Text(quizz.quizzName)
            ForEach(listQuestions, id: \.question){ question in
                Text(question.question)
            }
        }.task {
            for questID in quizz.questions {
                do{
                    let result = try await vmQuestion.fetchQuestionById(id: questID)
                    listQuestions.append(result)
                } catch {
                    print(error)
                }
            }
        }
        
    }
}

#Preview {
    QuizzTime()
}
