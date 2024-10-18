//
//  RatingRowComponent.swift
//  Pets
//
//  Created by Andre Linces on 10/18/24.
//

import Foundation
import SwiftUI

struct RatingRowComponent: UIComponent {
    
    let uiModel: RatingRowUIModel
    
    let id = UUID()
    
    func render() -> AnyView {
        RatingView(rating: .constant(uiModel.rating)).toAnyView()
    }
    
}
