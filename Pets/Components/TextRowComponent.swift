//
//  TextRowComponent.swift
//  Pets
//
//  Created by Andre Linces on 10/18/24.
//

import SwiftUI

struct TextRowComponent: UIComponent {
    
    let id: UUID = UUID()
    
    let uiModel: TextRowUIModel
    
    func render() -> AnyView {
        Text(uiModel.text)
            .padding()
            .toAnyView()
    }
       
}
