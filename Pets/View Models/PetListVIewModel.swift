//
//  PetListVIewModel.swift
//  Pets
//
//  Created by Andre Linces on 10/17/24.
//

import Foundation

@MainActor /// Main thread
class PetListVIewModel: ObservableObject {
    
    private var service: Webservice
    @Published var components: [UIComponent] = [] /// IT will notify the view that it has been published.
    
    init(service: Webservice) {
        self.service = service
    }
    
    func load() async {
        
        do {
           let screenModel = try await service.load(resource: Constants.Urls.petListing)
            components = try screenModel.buildComponents()
        } catch {
            print(error)
        }
    }
}
