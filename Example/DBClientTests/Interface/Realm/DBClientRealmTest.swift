

import XCTest
import DBClient
import RealmSwift

class DBClientRealmTest: DBClientTest {
    
    private let client = RealmDBClient(realm: try! Realm())
    override var dbClient: DBClient! {
        return client
    }
}
