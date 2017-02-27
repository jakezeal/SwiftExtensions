// String+Utilities
// Find more useful Swift extensions at https://github.com/jakezeal/SwiftExtensions


import UIKit

extension String {
    // Height with Constrained Width
    func heightWithConstrainedWidth(width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [NSFontAttributeName: font], context: nil)
        
        return boundingBox.height
    }
    
    // Remove Last Characters
    mutating func removeLastCharacters(numberOfCharacters: Int) {
        let startIndex = str.index(str.startIndex, offsetBy: characters.count-numberOfCharacters)
        let endIndex = str.index(str.startIndex, offsetBy: characters.count-1)
        let range = startIndex...endIndex
        removeSubrange(range)
    }
    
}

// Remove last characters of string
var str = "Hello, playground"
str.removeLastCharacters(numberOfCharacters: 4)
