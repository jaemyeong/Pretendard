import Foundation

import CoreText

import ErrorKit

public enum Pretendard: String, CaseIterable {
    @discardableResult
    public static func registerFonts() throws -> Bool {
        try self.allCases.allSatisfy { try $0.registerFont() }
    }
    
    @discardableResult
    public static func unregisterFonts() throws -> Bool {
        try self.allCases.allSatisfy { try $0.unregisterFont() }
    }
    
    case ultraLight
    
    case thin
    
    case light
    
    case regular
    
    case medium
    
    case semibold
    
    case bold
    
    case heavy
    
    case black
    
    public var fontName: String {
        switch self {
        case .ultraLight:
            return "Pretendard-Thin"
        case .thin:
            return "Pretendard-ExtraLight"
        case .light:
            return "Pretendard-Light"
        case .regular:
            return "Pretendard-Regular"
        case .medium:
            return "Pretendard-Medium"
        case .semibold:
            return "Pretendard-SemiBold"
        case .bold:
            return "Pretendard-Bold"
        case .heavy:
            return "Pretendard-ExtraBold"
        case .black:
            return "Pretendard-Black"
        }
    }
    
    @discardableResult
    public func registerFont() throws -> Bool {
        let name = self.fontName
        
        guard let url = Bundle.module.url(forResource: name, withExtension: "otf") else {
            throw NotFoundError(message: name)
        }
        
        var error: Unmanaged<CFError>?
        
        let success = CTFontManagerRegisterFontsForURL(url as CFURL, .process, &error)
        
        if let error = error?.takeUnretainedValue() {
            throw error
        }
        
        return success
    }
    
    public func unregisterFont() throws -> Bool {
        let name = self.fontName
        
        guard let url = Bundle.module.url(forResource: name, withExtension: "otf") else {
            throw NotFoundError(message: name)
        }
        
        var error: Unmanaged<CFError>?
        
        let success = CTFontManagerUnregisterFontsForURL(url as CFURL, .process, &error)
        
        if let error = error?.takeUnretainedValue() {
            throw error
        }
        
        return success
    }
}
