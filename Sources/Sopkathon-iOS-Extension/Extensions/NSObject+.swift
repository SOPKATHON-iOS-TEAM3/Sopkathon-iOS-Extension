import UIKit

public extension NSObject {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
