import UIKit

class CustomAnimation {
    
    // MARK: - Properties
    var view: UIView!
    var maxRotation: CGFloat!
    var duration: Double!
    
    
    // MARK: - Initializers
    init(view: UIView, maxRotation: CGFloat, duration: Double) {
        self.view = view
        self.maxRotation = maxRotation
        self.duration = duration
    }
    
    // MARK: - Animation
    func rotateAnimation() {
        
        let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
        
        rotateAnimation.fromValue = 0.0
        rotateAnimation.toValue = CGFloat(M_PI * Double(maxRotation) * 2.0)
        
        rotateAnimation.duration = self.duration
        self.view.layer.add(rotateAnimation, forKey: nil)
    }
}


