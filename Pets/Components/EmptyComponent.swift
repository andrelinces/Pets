//
//  EmptyComponent.swift
//  Pets
//
//  Created by Andre Linces on 10/18/24.
//

import Foundation
import SwiftUI

struct EmptyComponent: UIComponent {
    
    let id = UUID()
    
    func render() -> AnyView {
        EmptyView().toAnyView()
    }
    
}
