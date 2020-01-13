//
//  Owner.swift
//  Networking
//
//  Created by Daniel Griso Filho on 12/01/20.
//  Copyright © 2020 Daniel Griso Filho. All rights reserved.
//

import Foundation

public class Owner: Codable {
    
    let name: String
    let thumbURLImage: String
    
    enum CodingKeys: String, CodingKey {
        case name = "login"
        case thumbURLImage = "avatar_url"
    }
}
