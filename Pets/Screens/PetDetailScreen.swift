//
//  PetDetailScreen.swift
//  Pets
//
//  Created by Andre Linces on 10/18/24.
//

import SwiftUI

struct PetDetailScreen: View {
    
    let petId: Int
    
    @StateObject private var vm: PetDetailViewModel
    
    init(petId: Int) {
        _vm = StateObject(wrappedValue: PetDetailViewModel(service: Webservice()))
        self.petId = petId
    }
    
    var body: some View {
        ScrollView {
            ForEach(vm.components, id: \.id) { component in
                component.render()
            }
            
        }.task {
            await vm.load(petId: petId)
        }
    }
}

struct PetDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        PetDetailScreen(petId: 2)
    }
}

