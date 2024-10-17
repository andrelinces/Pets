//
//  PetListVIewModel.swift
//  Pets
//
//  Created by Andre Linces on 10/17/24.
//

import Foundation

@MainActor /// Main thread
class PetListViewModel: ObservableObject {
    
    private var service: NetworkService
    @Published var components: [UIComponent] = [] /// IT will notify the view that it has been published.
    
    init(service: NetworkService) {
        self.service = service
    }
    
    func load() async {
        
        do {
            
           let screenModel = try await service.load(Constants.ScreenResources.petListing)
            self.components = try screenModel.buildComponents()
            
        } catch {
            print(error)
        }
    }
}
