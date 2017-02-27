// Enum+Utilities
// Find more useful Swift extensions at https://github.com/jakezeal/SwiftExtensions


import UIKit

protocol CaseCountable: RawRepresentable {}

extension CaseCountable where RawValue == Int {
    // Count
    static var count: RawValue {
        var i: RawValue = 0
        while let _ = Self(rawValue: i) { i += 1 }
        return i
    }
    
    // Cases within range
    static func cases(_ range: CountableRange<Int>) -> [Self] {
        return range.flatMap { Self(rawValue: $0) }
    }
}

// Get count and all cases within range
enum Section: Int, CaseCountable {
    case title
    case description
}

print(Section.count)
print(Section.cases(0..<2))