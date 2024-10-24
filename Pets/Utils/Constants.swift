//
//  Constants.swift
//  Pets
//
//  Created by Andre Linces on 10/16/24.
//

import Foundation

struct Constants {
    
    struct ScreenResources {
        
        static let baseUrl = "localhost:8080"
        static let petListing = "pet-listing"
        
        static func petDetail(petId: Int) -> String {
            return "pet-detail/\(petId)"
        }
        
        static func resource(for resourceName: String) -> URL? {
            
            var components = URLComponents()
            components.scheme = "http"
            components.percentEncodedHost = baseUrl
            components.path = "/\(resourceName)"
            return components.url
            
        }
        
    }
    
}
