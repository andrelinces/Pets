//
//  FeaturedImageComponent.swift
//  Pets
//
//  Created by Andre Linces on 10/17/24.
//

import SwiftUI

struct FeaturedImageComponent: UIComponent {
    
    let uiModel: FeatureImageUIModel
    
    var uniqueId: String {
        return ComponentType.featuredImage.rawValue
    }
    
    func render() -> AnyView {
        AsyncImage(url: uiModel.imageUrl) { image in
            image.resizable()
                .aspectRatio(contentMode: .fill)
        } placeholder: {
            ProgressView()
        }.toAnyView() 
    }
}
