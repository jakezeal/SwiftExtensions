// UIView+Autolayout

import UIKit

extension UIView {
    class func newAutolayoutView() -> Self {
        let view = self.init()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }
}
