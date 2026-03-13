//
//  QuizzViewModels.swift
//  ProjetEspace
//
//  Created by Apprenant 109 on 10/03/2026.
//

import Foundation
import Observation

@Observable
class QuizzViewModels {
    
    private let apikey: String =
    "patcC8TZDmTftqNMb.21403494fe69345206fa582f8268d6da38a87e42ec2762b138ba4d37d57f0570"
    private let baseURL = URL(
        string:"https://api.airtable.com/v0/appHJzJ80jhZ6fY9f/quizz?="
    )!
    var quizzs: [Quizz] = []
    
    func fetchQuizzs() async throws {
        
        var request = URLRequest(url: baseURL)
        request.httpMethod = "GET"
        request.setValue("Bearer \(apikey)", forHTTPHeaderField: "Authorization")
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        
        do {
            let decoded = try decoder.decode(QuizzResponse.self, from: data)
            let quizzs = decoded.records.map {$0.fields}
            self.quizzs = quizzs.sorted {
                $0.quizzName < $1.quizzName
            }
            
        } catch {
            print ("Echec du décodage quizz :")
            throw error
        }
    }
}
