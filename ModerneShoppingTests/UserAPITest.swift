//
//  UserAPITest.swift
//  ModerneShoppingTests
//
//  Created by Ensar Ekici on 2023-03-29.
//

import XCTest
@testable import ModerneShopping
class UserAPITest: XCTestCase {

    var mockUsers: MockAPIServices!
    var users: UserViewModel!
   
    
    override func setUp() {
        mockUsers = MockAPIServices()
        users = .init(userServices: mockUsers)
    }
    
    func testLoadingUser(){
    }
    
    override func tearDown() {

    }

}
