

@testable import Example

// allows us to use `XCAssertEqual` on `User` objects
extension User: Equatable {
    
    public static func == (lhs: User, rhs: User) -> Bool {
        return lhs.id == rhs.id && lhs.name == rhs.name
    }

}
