//
//  NetworkService.swift
//  Pets
//
//  Created by Andre Linces on 10/17/24.
//

import Foundation

protocol NetworkService {
    func load(_ resourceName: String) async throws -> ScreenModel
}
