//
//  ContentView.swift
//  Pets
//
//  Created by Andre Linces on 10/16/24.
//

import SwiftUI

struct ContentView: View {
    
//    @StateObject private var vm = PetListVIewModel(service: Webservice())
    
    @StateObject private var vm: PetListVIewModel
    
    init() {
        _vm = StateObject(wrappedValue: PetListVIewModel(service: LocalService()))
    }
    
    var body: some View {
//       Text("Testing....")
        NavigationView {
            ScrollView {
                ForEach(vm.components, id:  \.uniqueId) { component in
                    
                    component.render()
                }
                navigationTitle("Pets")
            }.task {
                await vm.load()
            }
        }
        
    }
}

#Preview {
    ContentView()
}
