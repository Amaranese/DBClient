

import Foundation

/// Transaction error type.
///
/// - write: For write transactions.
/// - read: For read transactions.
public enum DatabaseError: Error {
    
    case write, read
    
}
