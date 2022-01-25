#if os(iOS)

import UIKit

public protocol UIFontRepresentable {
    func font(ofSize fontSize: CGFloat) -> UIFont?
}

extension Pretendard: UIFontRepresentable {
    public func font(ofSize fontSize: CGFloat) -> UIFont? {
        UIFont(name: self.fontName, size: fontSize)
    }
}

#endif
