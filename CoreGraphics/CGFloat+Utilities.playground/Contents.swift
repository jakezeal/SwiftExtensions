// CGFloat+Utilities
// Find more useful Swift extensions at https://github.com/jakezeal/SwiftExtensions


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
