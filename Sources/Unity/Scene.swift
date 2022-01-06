import Swift

public class Scene: Equatable, Hashable {

    // MARK: - Public Property(ies).
    
    /// Return the index of the Scene in the Build Settings.
    public var index: Int
    
    /// Returns true if the Scene is modifed.
    public var isDirty: Bool = false
    
    /// Returns true if the Scene is loaded.
    public var isLoaded: Bool = false
    
    /// Returns the name of the Scene that is currently active in the game or app.
    public var name: String

    // MARK: - Internal Property(ies).

    var objects: [Object] = []

    // MARK: - Constructor(s).

    public init(index: Int = 0, name: String = "") {
        self.index = index
        self.name = name
    }

    // MARK: - Function(s).

    public func hash(into hasher: inout Hasher) {
        hasher.combine(index)
        hasher.combine(isDirty)
        hasher.combine(isLoaded)
        hasher.combine(name)
        hasher.combine(objects)
    }

    // MARK: - Static Function(s).

    public static func == (_ lhs: Scene, _ rhs: Scene) -> Bool {
        lhs.index == rhs.index &&
        lhs.isDirty == rhs.isDirty &&
        lhs.isLoaded == rhs.isLoaded &&
        lhs.name == rhs.name &&
        lhs.objects == rhs.objects
    }
}
