//
//  OwnerViewModel.swift
//  Networking
//
//  Created by Daniel Griso Filho on 13/01/20.
//  Copyright (c) 2020 Daniel Griso Filho. All rights reserved.
//

import UIKit

public class OwnerViewModel {
    
    // MARK: - Init
    convenience init(_ object: Owner?) {
        self.init()
        self.object = object
    }
    
    // MARK: - Variables
    
    var object: Owner?
    public var name: String { return object?.name ?? "" }
    public var thumbURLImage: String { return object?.thumbURLImage ?? "" }
    
}
