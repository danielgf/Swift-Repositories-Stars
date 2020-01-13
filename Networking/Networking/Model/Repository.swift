//
//  Repository.swift
//  Networking
//
//  Created by Daniel Griso Filho on 12/01/20.
//  Copyright © 2020 Daniel Griso Filho. All rights reserved.
//

import Foundation

public class Repository: Codable {
    
    public let id: Int
    public let name: String
    public let owner: Owner
    public let description: String
    public let starCount: Int
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case owner
        case description
        case starCount = "stargazers_count"
    }
}
