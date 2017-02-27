// UIView+Utilities
// Find more useful Swift extensions at https://github.com/jakezeal/SwiftExtensions


import UIKit

extension UIView {
    // Add multiple subviews
    func addSubviews(_ subviews: [UIView]) {
        for subview in subviews {
            addSubview(subview)
        }
        
        setNeedsUpdateConstraints()
    }
}

