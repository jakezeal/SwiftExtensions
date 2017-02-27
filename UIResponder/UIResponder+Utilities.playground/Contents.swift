// UIResponder+Utilities
// Find more useful Swift extensions at https://github.com/jakezeal/SwiftExtensions


import UIKit

extension UIView {
    class func toString() -> String {
        let name = NSStringFromClass(self)
        let components = name.components(separatedBy: ".")
        
        guard let classString = components.last
            else { fatalError("Error: couldn't convert class name to string.") }
        
        return classString
    }
    
    class func nibNamed(nibName: String) -> UINib {
        return UINib(nibName: nibName, bundle: Bundle.main)
    }
    
    class func nib() -> UINib {
        return nibNamed(nibName: self.toString())
    }
    
    class func instanceFromNib() -> UIView {
        
        let view = nib().instantiate(withOwner: nil, options: nil)[0] as! UIView
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }
}
