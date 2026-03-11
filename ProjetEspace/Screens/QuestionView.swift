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
    @State var index = 0
    @State var finish : String = ""
    var body: some View {
        VStack {
            Text(quizz.quizzName)
            if !listQuestions.isEmpty {
                Text(listQuestions[index].question)
                ForEach(listQuestions[index].nameAnswers, id: \.self){ answer in
                    Text(answer)
                }
                if !listQuestions[index].nameGoodAnswer.isEmpty{
                    Text(listQuestions[index].nameGoodAnswer[0])
                        .foregroundStyle(.green)
                }
                Button("+") {
                    if !listQuestions.isEmpty {
                        if index < listQuestions.count - 1 {
                            index += 1
                        } else {
                            finish = "Questionnaire Suivant"
                        }
                    }
                }
                Text(finish)
                    .padding()
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
