//
//  SettingsViewModels.swift
//  ProjetEspace
//
//  Created by Leskeu  on 10/03/2026.
//

import Foundation
import Observation

@Observable
class SettingsViewModels {
    
    private let apikey: String =
    "patcC8TZDmTftqNMb.21403494fe69345206fa582f8268d6da38a87e42ec2762b138ba4d37d57f0570"
    private let baseURL = URL(
        string:"https://api.airtable.com/v0/appHJzJ80jhZ6fY9f/settings?="
        )!
    var settings: [Settings] = []
    
    func fetchSetttings() async throws {
        
        var request = URLRequest(url: baseURL)
        request.httpMethod = "GET"
        request.setValue("Bearer \(apikey)", forHTTPHeaderField: "Authorization")
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        
        do {
            let decoded = try decoder.decode(SettingsResponse.self, from: data)
            
            let settings = decoded.records.map { $0.fields}
            self.settings = settings
            
        }catch{
            print ("Echec du décodage : \(error)")
            throw error
        }
        }
    }
