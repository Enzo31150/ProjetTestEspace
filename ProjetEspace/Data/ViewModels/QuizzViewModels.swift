////
////  QuizzViewModels.swift
////  ProjetEspace
////
////  Created by Apprenant 109 on 10/03/2026.
////
//
//import Foundation
//import Observation
//
//@Observable
//class QuizzViewModels {
//    
//    private let apikey: String =
//    "patcC8TZDmTftqNMb.21403494fe69345206fa582f8268d6da38a87e42ec2762b138ba4d37d57f0570"
//    private let baseURL = URL(string: "https://api.airtable.com/v0/appHJzJ80jhZ6fY9f/quizz")!
//    var quizzs: [Quizz] = []
//    
//    func fetchQuizzs() async throws {
//        
//        var request = URLRequest(url: baseURL)
//        request.httpMethod = "GET"
//        request.setValue("Bearer \(apikey)", forHTTPHeaderField: "Authorization")
//        
//        let (data, response) = try await URLSession.shared.data(for: request)
//        
//        guard let http = response as? HTTPURLResponse else { throw URLError(.badServerResponse) }
//        guard (200...299).contains(http.statusCode) else {
//            if let body = String(data: data, encoding: .utf8) {
//                print("HTTP Error", http.statusCode, "Body:", body)
//            } else {
//                print("HTTP Error", http.statusCode)
//            }
//            throw URLError(.badServerResponse)
//        }
//        
//        let decoder = JSONDecoder()
//        decoder.dateDecodingStrategy = .iso8601
//        
//        do {
//            let decoded = try decoder.decode(QuizzResponse.self, from: data)
//            let quizzs = decoded.records.map {$0.fields}
//            await MainActor.run {
//                self.quizzs = quizzs.sorted { $0.quizzName < $1.quizzName }
//            }
//            
//        } catch {
//            print ("Echec du décodage quizz :")
//            throw error
//        }
//    }
//}
