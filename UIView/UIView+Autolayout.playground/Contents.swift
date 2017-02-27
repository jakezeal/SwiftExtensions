// UIView+Autolayout
// Find more useful Swift extensions at https://github.com/jakezeal/SwiftExtensions


import UIKit

extension UIView {
    class func newAutolayoutView() -> Self {
        let view = self.init()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }
}
