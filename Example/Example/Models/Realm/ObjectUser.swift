

import Foundation
import RealmSwift

class ObjectUser: Object {

    override class func primaryKey() -> String? {
        return #keyPath(ObjectUser.id)
    }

    @objc dynamic var id: String = ""
    @objc dynamic var name: String = ""

}
