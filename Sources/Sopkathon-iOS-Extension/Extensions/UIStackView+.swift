import UIKit

public extension UIStackView {
    func addArrangeSubviews(_ views: UIView...) {
        views.forEach { self.addArrangedSubview($0) }
    }
}
