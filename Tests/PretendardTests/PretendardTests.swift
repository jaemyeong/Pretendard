import XCTest

@testable import Pretendard

public final class PretendardTests: XCTestCase {
    public func testUltraLightRegisterFont() throws {
        let fontWeight: Pretendard = .ultraLight
        
        XCTAssertTrue(try fontWeight.registerFont())
        
        #if os(iOS)
        XCTAssertNotNil(fontWeight.font(ofSize: 14.0))
        #endif
        
        XCTAssertTrue(try fontWeight.unregisterFont())
    }
    
    public func testThinRegisterFont() throws {
        let fontWeight: Pretendard = .thin
        
        XCTAssertTrue(try fontWeight.registerFont())
        
        #if os(iOS)
        XCTAssertNotNil(fontWeight.font(ofSize: 14.0))
        #endif
        
        XCTAssertTrue(try fontWeight.unregisterFont())
    }
    
    public func testLightRegisterFont() throws {
        let fontWeight: Pretendard = .light
        
        XCTAssertTrue(try fontWeight.registerFont())
        
        #if os(iOS)
        XCTAssertNotNil(fontWeight.font(ofSize: 14.0))
        #endif
        
        XCTAssertTrue(try fontWeight.unregisterFont())
    }
    
    public func testRegularRegisterFont() throws {
        let fontWeight: Pretendard = .regular
        
        XCTAssertTrue(try fontWeight.registerFont())
        
        #if os(iOS)
        XCTAssertNotNil(fontWeight.font(ofSize: 14.0))
        #endif
        
        XCTAssertTrue(try fontWeight.unregisterFont())
    }
    
    public func testMediumRegisterFont() throws {
        let fontWeight: Pretendard = .medium
        
        XCTAssertTrue(try fontWeight.registerFont())
        
        #if os(iOS)
        XCTAssertNotNil(fontWeight.font(ofSize: 14.0))
        #endif
        
        XCTAssertTrue(try fontWeight.unregisterFont())
    }
    
    public func testSemiboldRegisterFont() throws {
        let fontWeight: Pretendard = .semibold
        
        XCTAssertTrue(try fontWeight.registerFont())
        
        #if os(iOS)
        XCTAssertNotNil(fontWeight.font(ofSize: 14.0))
        #endif
    }
    
    public func testBoldRegisterFont() throws {
        let fontWeight: Pretendard = .bold
        
        XCTAssertTrue(try fontWeight.registerFont())
        
        #if os(iOS)
        XCTAssertNotNil(fontWeight.font(ofSize: 14.0))
        #endif
        
        XCTAssertTrue(try fontWeight.unregisterFont())
    }
    
    public func testHeavyRegisterFont() throws {
        let fontWeight: Pretendard = .heavy
        
        XCTAssertTrue(try fontWeight.registerFont())
        
        #if os(iOS)
        XCTAssertNotNil(fontWeight.font(ofSize: 14.0))
        #endif
        
        XCTAssertTrue(try fontWeight.unregisterFont())
    }
    
    public func testBlackRegisterFont() throws {
        let fontWeight: Pretendard = .black
        
        XCTAssertTrue(try fontWeight.registerFont())
        
        #if os(iOS)
        XCTAssertNotNil(fontWeight.font(ofSize: 14.0))
        #endif
        
        XCTAssertTrue(try fontWeight.unregisterFont())
    }
    
    public func testAllCases() throws {
        XCTAssertTrue(try Pretendard.registerFonts())
        
        XCTAssertTrue(try Pretendard.unregisterFonts())
    }
}
