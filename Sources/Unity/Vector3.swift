import Math
import Swift
import func Darwin.acos

@frozen
public struct Vector3 {
    
    // MARK: - Static Property(ies).
    
    /// Shorthand for writing Vector3(0, 0, -1).
    public static let back: Vector3 = .init(x: 0, y: 0, z: -1)
    
    /// Shorthand for writing Vector3(0, -1, 0).
    public static let down: Vector3 = .init(x: 0, y: -1, z: 0)
    
    /// Shorthand for writing Vector3(0, 0, 1).
    public static let foward: Vector3 = .init(x: 0, y: 0, z: 1)
    
    /// Shorthand for writing Vector3(-1, 0, 0).
    public static let left: Vector3 = .init(x: -1, y: 0, z: 0)
    
    /// Shorthand for writing Vector3(1, 1, 1).
    public static let one: Vector3 = .init(x: 1, y: 1, z: 1)
    
    /// Shorthand for writing Vector3(1, 0, 0).
    public static let right: Vector3 = .init(x: 1, y: 0, z: 0)
    
    /// Shorthand for writing Vector3(0, 1, 0).
    public static let up: Vector3 = .init(x: 0, y: 1, z: 0)
    
    /// Shorthand for writing Vector3(0, 0, 0).
    public static let zero: Vector3 = .init(x: 0, y: 0, z: 0)
    
    // MARK: - Property(ies).
    
    /// X component of the vector.
    public let x: Double
    
    /// Y component of the vector.
    public let y: Double
    
    /// Z component of the vector.
    public let z: Double
    
    /// Returns the length of this vector (Read Only).
    public var magnitude: Double {
        sqrt(pow(x, 2) + pow(y, 2) + pow(z, 2))
    }
    
    /// Returns this vector with a magnitude of 1 (Read Only).
    /// Other names: Unit Vector
    public var normalized: Vector3 {
        .init(x: x / magnitude, y: y / magnitude, z: z / magnitude)
    }
    
    // MARK: - Constructor(s).
    
    /// Creates a new vector with given x, y, z components.
    @inlinable public init(x: Double, y: Double, z: Double) {
        self.x = x
        self.y = y
        self.z = z
    }
    
    // MARK: - Static Function(s).
    
    /// Returns the angle in degrees between from and to.
    /// The angle returned is the unsigned angle between the two vectors.
    /// This means the smaller of the two possible angles between the two vectors is used. 
    /// The result is never greater than 180 degrees.
    /// - parameters:
    ///    - a: The vector from which the angular difference is measured.
    ///    - b: The vector to which the angular difference is measured.
    /// - returns: The angle in degrees between the two vectors.
    @inlinable public static func angle(_ a: Vector3, _ b: Vector3) -> Double {
        degree(rad: acos(Vector3.dot(a, b) / (a.magnitude * b.magnitude)))
    }
    
    /// Returns the distance between two vectors.
    @inlinable public static func distance(_ a: Vector3, _ b: Vector3) -> Double {
        sqrt(pow(a.x - b.x, 2) + pow(a.y - b.y, 2) + pow(a.y - b.y, 2))
    }

    /// Dot Product of two vectors.
    @inlinable public static func dot(_ a: Vector3, _ b: Vector3) -> Double {
        (a.x * b.x) + (a.y * b.y) + (a.z * b.z)
    }

    @inlinable public static func scale(_ a: Vector3, _ b: Vector3) -> Vector3 {
        .init(x: a.x * b.x, y: a.y * b.y, z: a.z * b.z)
    }

    @inlinable public static func cross(_ a: Vector3, _ b: Vector3) -> Vector3 {
        .init(x: (a.y * b.z) - (a.z * b.y), y: (a.z * b.x) - (a.x * b.z), z: (a.x * b.y) - (a.y * b.x))
    }

    @inlinable public static func project(_ a: Vector3, _ b: Vector3) -> Vector3 {
         b * (Vector3.dot(a, b) / pow(b.magnitude, 2))
    }
}

extension Vector3: CustomStringConvertible {
    public var description: String {
        "Vector3(x: \(x), y: \(y), z: \(z))"
    }
}

extension Vector3: Equatable {
    
    /// Returns true if two vectors are approximately equal.
    @inlinable public static func == (_ lhs: Vector3, _ rhs: Vector3) -> Bool {
        lhs.x == rhs.x && lhs.y == rhs.y && lhs.z == rhs.z
    }
    
    /// Multiplies a vector by a number.
    @inlinable public static func * (_ lhs: Vector3, _ rhs: Double) -> Vector3 {
        .init(x: lhs.x * rhs, y: lhs.y * rhs, z: lhs.z * rhs)
    }
    
    /// Divides a vector by a number.
    @inlinable public static func / (_ lhs: Vector3, _ rhs: Double) -> Vector3 {
        .init(x: lhs.x / rhs, y: lhs.y / rhs, z: lhs.z / rhs)
    }
    
    /// Adds two vectors.
    @inlinable public static func + (_ lhs: Vector3, _ rhs: Vector3) -> Vector3 {
        .init(x: lhs.x + rhs.x, y: lhs.y + rhs.y, z: lhs.z + rhs.z)
    }
    
    /// Subtracts one vector from another.
    @inlinable public static func - (_ lhs: Vector3, _ rhs: Vector3) -> Vector3 {
        .init(x: lhs.x - rhs.x, y: lhs.y - rhs.y, z: lhs.z - rhs.z)
    }
}
