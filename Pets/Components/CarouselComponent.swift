//
//  CarouselComponent.swift
//  Pets
//
//  Created by Andre Linces on 10/17/24.
//

import Foundation
import SwiftUI

struct CarouselComponent: UIComponent {
    
    let uiModel: CarouselUIModel
    let id = UUID()
    
    func render() -> AnyView {
        CarouselView(uiModel: uiModel).toAnyView()
    }
    
}
