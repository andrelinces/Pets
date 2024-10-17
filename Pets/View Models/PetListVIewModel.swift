//
//  PetListVIewModel.swift
//  Pets
//
//  Created by Andre Linces on 10/17/24.
//

import Foundation

class PetListVIewModel: ObservableObject {
    
    private var service: Webservice
    
    init(service: Webservice) {
        self.service = service
    }
    
    func load() async {
        
        do {
           let screenModel = try await service.load(resource: Constants.Urls.petListing)
        } catch {
            print(error)
        }
    }
}
