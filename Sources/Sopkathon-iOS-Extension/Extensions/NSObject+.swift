import UIKit

public protocol ReuseIdentifier {
    static var reuseIdentifier: String { get }
}

extension NSObject: ReuseIdentifier {
    public static var reuseIdentifier: String {
        return String(describing: self)
    }
}
