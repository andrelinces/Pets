//
//  Navigator.swift
//  Pets
//
//  Created by Andre Linces on 10/18/24.
//

import Foundation
import SwiftUI


struct SheetView<V: View>: View {
    @State private var isPresented: Bool = false
    let content: () -> V
    let destinationView: AnyView
    
    var body: some View {
        content().onTapGesture {
            isPresented = true
        }.sheet(isPresented: $isPresented) {
            destinationView
        }
    }
    
}


class Navigator {
    
    static func perform<V: View>(action: Action, payload: Any? = nil, content: @escaping () -> V ) -> AnyView {
        
        var destinationView: AnyView!
        
        switch action.destination {
        case .petDetail:
            if let payload = payload as? CarouselRowUIModel {
                destinationView = PetDetailScreen(petId: payload.petId).toAnyView()
            } else {
                destinationView = EmptyView().toAnyView()
            }
            destinationView = Text("Pet Detail").toAnyView()
        }
        
        switch action.type {
        case .sheet:
            return SheetView(content: {
                content()
            }, destinationView: destinationView).toAnyView()
            
        case .push:
            return NavigationLink {
                destinationView
            } label: {
                content()
            }.toAnyView()
            
        }
        
    }
    
}
