//
//  RepositoryViewModel.swift
//  Networking
//
//  Created by Daniel Griso Filho on 13/01/20.
//  Copyright (c) 2020 Daniel Griso Filho. All rights reserved.
//

import UIKit

public class RepositoryViewModel {
    
    // MARK: - Init
    convenience init(_ object: Repository?) {
        self.init()
        self.object = object
    }
    
    // MARK: - Variables
    
    var object: Repository?
    public var id: Int { return object?.id ?? 0 }
    public var repositoryName: String { return object?.name ?? "" }
    public var owner: OwnerViewModel { return OwnerViewModel(object?.owner) }
    public var description: String { return object?.description ?? "" }
    public var starCount: Int { return object?.starCount ?? 0 }
}
