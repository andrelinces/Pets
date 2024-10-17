//
//  LocalService.swift
//  Pets
//
//  Created by Andre Linces on 10/17/24.
//

import Foundation

class LocalService: NetworkService {
    
    func load(_ resourceName: String) async throws -> ScreenModel {
        
        guard let path = Bundle.main.path(forResource: resourceName, ofType: "json") else {
            fatalError("Resource file \(resourceName) not found!")
        }
        
        let data = try Data(contentsOf: URL(fileURLWithPath: path))
        let screenModel = try JSONDecoder().decode(ScreenModel.self, from: data)
        return screenModel
    }
    
}
