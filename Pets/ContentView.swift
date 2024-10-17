//
//  ContentView.swift
//  Pets
//
//  Created by Andre Linces on 10/16/24.
//

import SwiftUI

struct ContentView: View {
   
    @StateObject private var vm: PetListViewModel
    
    init() {
        _vm = StateObject(wrappedValue: PetListViewModel(service: LocalService()))
    }
   
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(vm.components, id: \.uniqueId) { component in
                    component.render()
                }
                
                .navigationTitle("Pets")
            }.task {
                await vm.load()
            }
        }
    }
}


//#Preview {
//    ContentView()
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
