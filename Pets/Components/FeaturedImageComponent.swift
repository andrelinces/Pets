//
//  FeaturedImageComponent.swift
//  Pets
//
//  Created by Andre Linces on 10/17/24.
//

import Foundation
import SwiftUI

struct FeaturedImageComponent: UIComponent {
    
    let uiModel: FeaturedImageUIModel
    let id = UUID()
    
    func render() -> AnyView {
        AsyncImage(url: uiModel.imageUrl) { image in
            image.resizable()
                .aspectRatio(contentMode: .fill)
        } placeholder: {
            ProgressView()
        }.toAnyView()
    }
    
}
