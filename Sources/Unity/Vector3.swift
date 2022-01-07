import Swift

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
    public let x: Float
    
    /// Y component of the vector.
    public let y: Float
    
    /// Z component of the vector.
    public let z: Float
    
    /// Returns the length of this vector (Read Only).
    public var magnitude: Float { 0 }
    
    /// Returns this vector with a magnitude of 1 (Read Only).
    public var normalized: Float { 0 }
    
    // MARK: - Constructor(s).
    
    /// Creates a new vector with given x, y, z components.
    @inlinable public init(x: Float, y: Float, z: Float) {
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
    ///    - from: The vector from which the angular difference is measured.
    ///    - to: The vector to which the angular difference is measured.
    /// - returns: The angle in degrees between the two vectors.
    @inlinable public static func angle(_ from: Vector3, _ to: Vector3) -> Float {
        0
    }
    
    /// Returns the distance between two vectors.
    @inlinable public static func distance(_ a: Vector3, _ b: Vector3) -> Float {
        0
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
    @inlinable public static func * (_ lhs: Vector3, _ rhs: Float) -> Vector3 {
        .init(x: lhs.x * rhs, y: lhs.y * rhs, z: lhs.z * rhs)
    }
    
    /// Divides a vector by a number.
    @inlinable public static func / (_ lhs: Vector3, _ rhs: Float) -> Vector3 {
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
