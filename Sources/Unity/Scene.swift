import Swift

@frozen
public struct Scene: Equatable, Hashable {
    
    /// Return the index of the Scene in the Build Settings.
    public var index: Int
    
    /// Returns true if the Scene is modifed.
    public var isDirty: Bool
    
    /// Returns true if the Scene is loaded.
    public var isLoaded: Bool
    
    /// Returns the name of the Scene that is currently active in the game or app.
    public var name: String

    // MARK: - Function(s).

    @inlinable
    public func hash(into hasher: inout Hasher) {
        hasher.combine(index)
        hasher.combine(isDirty)
        hasher.combine(isLoaded)
        hasher.combine(name)
    }

    // MARK: - Static Function(s).

    @inlinable
    public static func == (_ lhs: Scene, _ rhs: Scene) -> Bool {
        lhs.index == rhs.index &&
        lhs.isDirty == rhs.isDirty &&
        lhs.isLoaded == rhs.isLoaded &&
        lhs.name == rhs.name
    }
}
