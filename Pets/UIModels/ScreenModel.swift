//
//  ScreenModel.swift
//  Pets
//
//  Created by Andre Linces on 10/16/24.
//

import Foundation

enum ComponentType: String, Decodable {
    case featuredImage
}

struct componentModel: Decodable {
    let type: ComponentType
    let data: [String: String]
}

struct ScreenModel: Decodable {
    let pageTitle: String
    let components: [componentModel]
}

extension ScreenModel {
    
    func buildComponents() throws -> [UIComponent] {
        
        var components: [UIComponent] = []
        
        for component in self.components {
            switch component.type {
            case .featuredImage:
                print("featuredImage")
            }
        }
        return components
    }
}
