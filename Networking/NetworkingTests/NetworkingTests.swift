//
//  NetworkingTests.swift
//  NetworkingTests
//
//  Created by Daniel Griso Filho on 13/01/20.
//  Copyright © 2020 Daniel Griso Filho. All rights reserved.
//

import XCTest
@testable import Networking

class NetworkingTests: XCTestCase {
    
    var network: NetworkingManager?

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        network = NetworkingManager()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        network = nil
    }

    func testNetworkmanagerNotNil() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertNotNil(network)
    }

}
