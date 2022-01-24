

import XCTest
import DBClient

class DBClientCoreDataTest: DBClientTest {
    
    private let client = CoreDataDBClient(forModel: "Users")
    override var dbClient: DBClient! {
        return client
    }
}
