

@testable import Example

// allows us to use `.sorted()` on the array of `User objects
extension User: Comparable {

    public static func < (lhs: User, rhs: User) -> Bool {
        return lhs.id < rhs.id
    }
    
    public static func <= (lhs: User, rhs: User) -> Bool {
        return lhs.id <= rhs.id
    }
    
    public static func >= (lhs: User, rhs: User) -> Bool {
        return lhs.id >= rhs.id
    }
    
    public static func > (lhs: User, rhs: User) -> Bool {
        return rhs.id > rhs.id
    }

}
