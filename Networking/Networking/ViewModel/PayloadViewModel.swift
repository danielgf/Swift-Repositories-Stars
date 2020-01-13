//
//  PayloadViewModel.swift
//  Networking
//
//  Created by Daniel Griso Filho on 13/01/20.
//  Copyright (c) 2020 Daniel Griso Filho. All rights reserved.
//

import UIKit

public class PayloadViewModel {
    
    // MARK: - Init
    convenience init(_ object: Payload?) {
        self.init()
        self.object = object
    }
    
    // MARK: - Variables
    
    var object: Payload?
    public var repositoriesCount: Int { return object?.repositoriesCount ?? 0 }
    public var incompleteResults: Bool { return object?.incompleteResults ?? false }
    
}
