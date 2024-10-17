//
//  Webservice.swift
//  Pets
//
//  Created by Andre Linces on 10/16/24.
//

import Foundation

enum NetWorkError: Error {
    case invalidUrl
    case invalidServerResponse
}

class Webservice {
    
    
    func load(resource: String) async throws -> ScreenModel {
        
        guard let url = URL(string: resource) else {
            throw NetWorkError.invalidUrl
        }
       let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
           throw NetWorkError.invalidServerResponse
        }
        return try JSONDecoder().decode(ScreenModel.self, from: data)
    }
    
}
