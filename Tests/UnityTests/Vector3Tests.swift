import XCTest
import Math
@testable import Unity

class Vector3Tests: XCTestCase {
    func testMagnitude() throws {
        let v = Vector3(x: 3, y: 1, z: 2)
        XCTAssertEqual(v.magnitude.rounded(3), 3.742)
    }

    func testNormalized() throws {
        let v = Vector3(x: 3, y: 1, z: 2)
        XCTAssertEqual(v.normalized.x.rounded(3), 0.802)
        XCTAssertEqual(v.normalized.y.rounded(3), 0.267)
        XCTAssertEqual(v.normalized.z.rounded(3), 0.535)
    }

    func testScale() throws {
        let a = Vector3(x: 3, y: 1, z: 5)
        let b = Vector3(x: 2, y: 7, z: 5)

        let c = Vector3.scale(a, b)
        XCTAssertEqual(c, Vector3(x: 6, y: 7, z: 25))
    }

    func testDot() throws {
        let a = Vector3(x: 3, y: 1, z: 5)
        let b = Vector3(x: 2, y: 7, z: 5)

        XCTAssertEqual(Vector3.dot(a, b), 38)
    }

    func testCross() throws {
        let a = Vector3(x: 3, y: 1, z: 5)
        let b = Vector3(x: 2, y: 7, z: 5)

        XCTAssertEqual(Vector3.cross(a, b), .init(x: -30, y: -5, z: 19))
    }

    func testProject() throws {
        let a = Vector3(x: 3, y: 1, z: 5)
        let b = Vector3(x: 2, y: 7, z: 5)
        let c = Vector3.project(a, b)

        XCTAssertEqual(Vector3(x: c.x.rounded(2), y: c.y.rounded(2), z: c.z.rounded(2)), .init(x: 0.97, y: 3.41, z: 2.44))
    }

    func testAngle() throws {
        let a = Vector3(x: 3, y: 1, z: 5)
        let b = Vector3(x: 2, y: 7, z: 5)

        XCTAssertEqual(Vector3.angle(a, b).rounded(5), 43.34106)
    }
}
