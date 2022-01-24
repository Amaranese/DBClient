

import XCTest
@testable import Example

final class CoreDataUpsertTests: DBClientCoreDataTest {
    
    func test_SyncUpsertUsers_WhenSuccessful_ReturnsUpsertedUsers() {
        let newUsers: [User] = (0...5).map { _ in User.createRandom() }
        let savedUsers: [User] = (0...5).map { _ in User.createRandom() }
        let combinedUsers = savedUsers + newUsers
        
        dbClient.insert(savedUsers)
        let result = dbClient.upsert(combinedUsers)
        
        let expectedUsers = result.require().updated + result.require().inserted
        XCTAssertEqual(expectedUsers.sorted(), combinedUsers.sorted())
    }
    
    func test_UpsertUsers_WhenSuccessful_ReturnsUpsertedUsers() {
        let newUsers: [User] = (0...5).map { _ in User.createRandom() }
        let savedUsers: [User] = (0...5).map { _ in User.createRandom() }
        let expectationObjects = expectation(description: "Object")
        var expectedUsers = [User]()
        let combinedUsers = savedUsers + newUsers
        
        self.dbClient.insert(savedUsers) { _ in
            self.dbClient.upsert(combinedUsers) { result in
                expectedUsers = result.require().updated + result.require().inserted
                expectationObjects.fulfill()
            }
        }
        
        waitForExpectations(timeout: 1) { _ in
            XCTAssertEqual(expectedUsers, combinedUsers)
        }
    }
}
