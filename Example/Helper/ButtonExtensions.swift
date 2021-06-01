    
import UIKit

extension UIButton {
    func pulse() {
        
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.6
        pulse.fromValue = 0.8
        pulse.toValue = 1.0
        pulse.autoreverses = false
        pulse.repeatCount = 1
        pulse.initialVelocity = 1
        layer.add(pulse, forKey: "pulse")
    }
}

extension UIView {
    func pulseView() {
        
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.6
        pulse.fromValue = 0.8
        pulse.toValue = 1.0
        pulse.autoreverses = false
        pulse.repeatCount = 1
        pulse.initialVelocity = 1
        layer.add(pulse, forKey: "pulse")
    }
}
