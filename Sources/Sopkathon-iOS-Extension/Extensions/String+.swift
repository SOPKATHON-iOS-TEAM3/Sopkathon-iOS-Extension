import UIKit

public extension String {
    func setAttributedText(options: [NSAttributedString.Key: Any]) -> NSMutableAttributedString {
        let attrString = NSMutableAttributedString(attributedString: .init(string: self))
        attrString.addAttributes(options, range: .init(location: 0, length: self.count))
        
        return attrString
    }
}
