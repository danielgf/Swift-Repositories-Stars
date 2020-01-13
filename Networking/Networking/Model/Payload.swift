//
//  Payload.swift
//  Networking
//
//  Created by Daniel Griso Filho on 12/01/20.
//  Copyright © 2020 Daniel Griso Filho. All rights reserved.
//

import Foundation

public class Payload: Codable {
    
    public let repositoriesCount: Int
    public let incompleteResults: Bool
    public let repository: [Repository]
    
    enum CodingKeys: String, CodingKey {
        case repositoriesCount = "total_count"
        case incompleteResults = "incomplete_results"
        case repository = "items"
    }
}
