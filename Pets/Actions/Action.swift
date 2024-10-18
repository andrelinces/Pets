//
//  Action.swift
//  Pets
//
//  Created by Andre Linces on 10/17/24.
//

import Foundation

enum ActionType: String, Decodable {
    case sheet
    case push
}

struct Action: Decodable {
    let type: ActionType
    let destination: Route
}
