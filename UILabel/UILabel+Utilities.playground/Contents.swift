// UILabel+Utilities
// Find more useful Swift extensions at https://github.com/jakezeal/SwiftExtensions


import UIKit

extension UILabel {
    
    func set(kerningValue: CGFloat) {
        let attributes: [String : Any] = [NSKernAttributeName : kerningValue,
                                          NSFontAttributeName : font,
                                          NSForegroundColorAttributeName: textColor]
        
        attributedText = NSAttributedString(string: text ?? "",
                                            attributes: attributes)
    }
}
