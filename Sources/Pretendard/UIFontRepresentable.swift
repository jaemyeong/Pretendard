import ErrorKit

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

extension UIFont {
    public class func pretendardFont(ofSize fontSize: CGFloat, weight: UIFont.Weight) throws -> UIFont? {
        switch weight {
        case .ultraLight:
            return Pretendard.ultraLight.font(ofSize: fontSize)
        case .thin:
            return Pretendard.thin.font(ofSize: fontSize)
        case .light:
            return Pretendard.light.font(ofSize: fontSize)
        case .regular:
            return Pretendard.regular.font(ofSize: fontSize)
        case .medium:
            return Pretendard.medium.font(ofSize: fontSize)
        case .semibold:
            return Pretendard.semibold.font(ofSize: fontSize)
        case .bold:
            return Pretendard.bold.font(ofSize: fontSize)
        case .heavy:
            return Pretendard.heavy.font(ofSize: fontSize)
        case .black:
            return Pretendard.black.font(ofSize: fontSize)
        default:
            throw UnknownError()
        }
    }
}

#endif
