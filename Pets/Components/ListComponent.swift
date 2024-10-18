//
//  ListComponent.swift
//  Pets
//
//  Created by Andre Linces on 10/18/24.
//

import Foundation
import SwiftUI

struct ListComponent: UIComponent {
    
    let id = UUID()
    let uiModel: ListUIModel
    
    func render() -> AnyView {
        
        ForEach(uiModel.rows, id: \.id) { row in
            RowComponent(uiModel: row).render().toAnyView()
        }.toAnyView()
    }
    
}
