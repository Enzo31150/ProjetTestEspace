//
//  QuestionView.swift
//  ProjetEspace
//
//  Created by Leskeu  on 10/03/2026.
//

import SwiftUI

//struct QuestionView: View {
//    @Binding var quizz: Quizz
//    @State var vmQuestion = QuestionsViewModels()
//    @State var listQuestions: [Questions] = []
//    @State var index = 0
//    @State var finish : String = ""
//    @State var selectedAnswer: String? = nil
//    @State private var answersDetails: [String: Answers] = [:] // id -> Answer details
//
//    
//    var body: some View {
//        VStack {
//            Text(quizz.quizzName)
//            if !listQuestions.isEmpty {
//                Text(listQuestions[index].question)
//                ForEach(listQuestions[index].answers, id: \.self){ answer in
//                    Button {
//                        selectedAnswer = answer
//                    } label: {
//                        Text(answer)
//                            .foregroundStyle(colorForAnswer(answer))
//                    }
//                }
//                Button {
//                    if !listQuestions.isEmpty {
//                        if index < listQuestions.count - 1 {
//                            index += 1
//                            selectedAnswer = nil
//                        } else {
//                            finish = "Questionnaire Suivant"
//                        }
//                    }
//                } label : {
//                    Text("Next")
//                }
//                .disabled(selectedAnswer == nil)
//                Text(finish)
//                    .padding()
//            }
//            else {
//                Text("Aucune question disponible")
//            }
//            
//        }.task {
//            for questID in quizz.questions {
//                do{
//                    let result = try await vmQuestion.fetchQuestionById(id: questID)
//                    listQuestions.append(result)
//                } catch {
//                    print(error)
//                }
//            }
//        }
//        .task(id: index) {
//            guard !listQuestions.isEmpty else { return }
//            let currentAnswers = listQuestions[index].answers
//            for ansID in currentAnswers {
//                do {
//                    // Fetch and cache details if not already present
//                    if answersDetails[ansID] == nil {
//                        let detail = try await vmQuestion.fetchAnswerById(id: ansID)
//                        // Map to local Answer if needed
//                        let mapped = Answers(id: ansID, text: String(describing: detail))
//                        answersDetails[ansID] = mapped
//                    }
//                } catch {
//                    print(error)
//                }
//            }
//        }
//        
//    }
//    func colorForAnswer(_ answer: String) -> Color {
//        guard let selectedAnswer else { return .yellow }
//        if answer == selectedAnswer {
//            return answer == goodAnswer ? .green : .red
//        }
//        return .yellow
//    }
//}
//
//#Preview {
//    QuizzTime()
//}
