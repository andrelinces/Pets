//
//  Dictionary+Extensions.swift
//  Pets
//
//  Created by Andre Linces on 10/17/24.
//

import Foundation

extension Dictionary {
    
    func decode<T: Decodable>() -> T? {
        
        guard let data = try? JSONSerialization.data(withJSONObject: self, options: .prettyPrinted) else {
            return nil
        }
        print(">>>> data: \(data)")
        return try? JSONDecoder().decode(T.self, from: data)
    }
    
}
