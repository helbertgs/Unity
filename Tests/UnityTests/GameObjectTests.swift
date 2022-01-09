import XCTest
import Math
@testable import Unity

final class GameObjectTests: XCTestCase {
    func testExample() throws {
        let gameObject = GameObject(name: "GameObject")

        XCTAssertEqual(gameObject.name, "GameObject")
        XCTAssertEqual(gameObject.isStatic, false)
        XCTAssertEqual(gameObject.layer, 0)
        XCTAssertEqual(gameObject.tag, "")
    }
}
