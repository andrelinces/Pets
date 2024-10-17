//
//  UIComponent.swift
//  Pets
//
//  Created by Andre Linces on 10/17/24.
//

import Foundation
import SwiftUI


protocol UIComponent {
    
    var uniqueId: String { get }
    func render() -> AnyView
    
}
