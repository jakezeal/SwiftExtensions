// UIView+Utilities
// Find more useful extensions at https://github.com/jakezeal/ReusableSwiftExtensions


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

