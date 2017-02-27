// Dictionary+Utilities
// Find more useful Swift extensions at https://github.com/jakezeal/SwiftExtensions

import Foundation

extension Dictionary {
    
    // Check if key exists in dictionary
    func has(key: Key) -> Bool {
        return index(forKey: key) != nil
    }
}