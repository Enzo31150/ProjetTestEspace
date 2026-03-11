//
//  QuestionsAnswersViewModels.swift
//  ProjetEspace
//
//  Created by Leskeu  on 10/03/2026.
//

import Foundation
import Observation

@Observable
class QuestionsViewModels {
    
    private let apikey: String =
    "patcC8TZDmTftqNMb.21403494fe69345206fa582f8268d6da38a87e42ec2762b138ba4d37d57f0570"
    private let baseURL = URL(
        string:"https://api.airtable.com/v0/appHJzJ80jhZ6fY9f/questions?="
    )!
    var questions: [Questions] = []
    
    func fetchQuestionById(id: String) async throws -> Questions {
        let newURL = URL(string: "https://api.airtable.com/v0/appHJzJ80jhZ6fY9f/Questions/\(id)")!
        var request = URLRequest(url: newURL)
        request.httpMethod = "GET"
        request.setValue("Bearer \(apikey)", forHTTPHeaderField: "Authorization")
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        
        do {
            let decoded = try decoder.decode(QuestionsResult.self, from: data)
            
            let question = decoded.fields
            return question
            
        }catch{
            print ("Echec du décodage : question")
            throw error
        }
    }
    func fetchAnswerById(id: String) async throws -> Answers {
        let newURL = URL(string: "https://api.airtable.com/v0/appHJzJ80jhZ6fY9f/Answers/\(id)")!
        var request = URLRequest(url: newURL)
        request.httpMethod = "GET"
        request.setValue("Bearer \(apikey)", forHTTPHeaderField: "Authorization")
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        
        do {
            let decoded = try decoder.decode(AnswersResult.self, from: data)
            
            let answer = decoded.fields
            return answer
            
        }catch{
            print ("Echec du décodage : \(error)")
            throw error
        }
    }
}
