// CGFloat+Utilities
// Find more useful extensions at https://github.com/jakezeal/ReusableSwiftExtensions

import CoreGraphics

extension CGFloat {
    func clamped(min: CGFloat, max: CGFloat) -> CGFloat {
        switch self {
        case _ where self < min: return min
        case _ where self > max: return max
        default: return self
        }
    }
}