

import Foundation
import CoreData

extension ManagedUser {

    @nonobjc
    class func fetchRequest() -> NSFetchRequest<ManagedUser> {
        return NSFetchRequest<ManagedUser>(entityName: User.entityName)
    }

    @NSManaged var id: String?
    @NSManaged var name: String?
    
}
