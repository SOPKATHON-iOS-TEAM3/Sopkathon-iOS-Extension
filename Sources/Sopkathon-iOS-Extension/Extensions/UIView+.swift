import UIKit

public extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach { self.addSubview($0) }
    }
    
    func removeAllSubViews() {
        self.subviews.forEach { $0.removeFromSuperview() }
    }
    
    @discardableResult
    func drawShadow(color: UIColor,
                    opacity: Float,
                    offset: CGSize,
                    radius: CGFloat) -> Self {
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = offset
        layer.shadowRadius = radius
        return self
    }
    
    @discardableResult
    func removeShadow() -> Self {
        layer.shadowColor = UIColor.clear.cgColor
        layer.shadowOpacity = 0
        layer.shadowOffset = .zero
        layer.shadowRadius = 0
        return self
    }
    
    func addGradient(size: CGSize,
                     colors: [CGColor],
                     startPoint: CGPoint,
                     endPoint: CGPoint) {
        removeGradient()
        let gradient = CAGradientLayer()
        gradient.frame = CGRect(origin: .zero, size: size)
        gradient.colors = colors
        gradient.startPoint = startPoint
        gradient.endPoint = endPoint
        
        self.layer.insertSublayer(gradient, at: 0)
        self.layer.setNeedsDisplay()
    }
    
    func removeGradient() {
        if let gradientLayer = (self.layer.sublayers?.compactMap { $0 as? CAGradientLayer })?.first {
            gradientLayer.removeFromSuperlayer()
        }
    }
}
