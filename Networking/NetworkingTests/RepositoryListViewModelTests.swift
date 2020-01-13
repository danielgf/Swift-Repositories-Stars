//
//  RepositoryListViewModelTests.swift
//  NetworkingTests
//
//  Created by Daniel Griso Filho on 13/01/20.
//  Copyright © 2020 Daniel Griso Filho. All rights reserved.
//

import XCTest
@testable import Networking

class RepositoryListViewModelTests: XCTestCase {
    
    var repository: RepositoryListViewModel?

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        repository = RepositoryListViewModel()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        repository = nil
    }
    
    func testListViewModelNotNil() {
        XCTAssertNotNil(repository)
    }

}
