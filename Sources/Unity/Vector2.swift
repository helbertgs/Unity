import Swift

@frozen
public struct Vector2 {
    
    // MARK: - Static Property(ies).
    
    /// Shorthand for writing Vector2(0, -1).
    public static let down: Vector2 = .init(x: 0, y: -1)
    
    /// Shorthand for writing Vector2(-1, 0).
    public static let left: Vector2 = .init(x: -1, y: 0)
    
    /// Shorthand for writing Vector2(1, 1).
    public static let one: Vector2 = .init(x: 1, y: 1)
    
    /// Shorthand for writing Vector2(1, 0).
    public static let right: Vector2 = .init(x: 1, y: 0)
    
    /// Shorthand for writing Vector2(0, 1).
    public static let up: Vector2 = .init(x: 0, y: 1)
    
    /// Shorthand for writing Vector2(0, 0).
    public static let zero: Vector2 = .init(x: 0, y: 0)
    
    // MARK: - Property(ies).
    
    /// X component of the vector.
    public let x: Float
    
    /// Y component of the vector.
    public let y: Float
    
    /// Returns the length of this vector (Read Only).
    public var magnitude: Float { 0 }
    
    /// Returns this vector with a magnitude of 1 (Read Only).
    public var normalized: Float { 0 }
    
    // MARK: - Constructor(s).
    
    /// Creates a new vector with given x, y components.
    @inlinable public init(x: Float, y: Float) {
        self.x = x
        self.y = y
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
    @inlinable public static func angle(_ from: Vector2, _ to: Vector2) -> Float {
        0
    }
    
    /// Returns the distance between two vectors.
    @inlinable public static func distance(_ a: Vector2, _ b: Vector2) -> Float {
        0
    }
}

extension Vector2: CustomStringConvertible {
    public var description: String {
        "Vector2(x: \(x), y: \(y))"
    }
}

extension Vector2: Equatable {
    
    /// Returns true if two vectors are approximately equal.
    @inlinable public static func == (_ lhs: Vector2, _ rhs: Vector2) -> Bool {
        lhs.x == rhs.x && lhs.y == rhs.y
    }
    
    /// Multiplies a vector by a number.
    @inlinable public static func * (_ lhs: Vector2, _ rhs: Float) -> Vector2 {
        .init(x: lhs.x * rhs, y: lhs.y * rhs)
    }
    
    /// Divides a vector by a number.
    @inlinable public static func / (_ lhs: Vector2, _ rhs: Float) -> Vector2 {
        .init(x: lhs.x / rhs, y: lhs.y / rhs)
    }
    
    /// Adds two vectors.
    @inlinable public static func + (_ lhs: Vector2, _ rhs: Vector2) -> Vector2 {
        .init(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
    }
    
    /// Subtracts one vector from another.
    @inlinable public static func - (_ lhs: Vector2, _ rhs: Vector2) -> Vector2 {
        .init(x: lhs.x - rhs.x, y: lhs.y - rhs.y)
    }
}

