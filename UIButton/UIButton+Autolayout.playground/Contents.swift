// UIButton+Autolayout
// Find more useful Swift extensions at https://github.com/jakezeal/SwiftExtensions

import UIKit

extension UIButton {
    class func newAutolayoutView() -> Self {
        let view = self.init(type: .custom)
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }
}
