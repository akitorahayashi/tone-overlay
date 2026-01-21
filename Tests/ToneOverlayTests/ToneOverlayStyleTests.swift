import SwiftUI
import XCTest

@testable import ToneOverlay

final class ToneOverlayStyleTests: XCTestCase {
  func testTintedStyleDoesNotForceDesaturation() {
    let style = ToneOverlayStyle.tinted(color: .red, opacity: 0.4)

    XCTAssertEqual(style.desaturation, 0.0, accuracy: 0.0001)
    XCTAssertEqual(style.tintOpacity, 0.4, accuracy: 0.0001)
  }
}
