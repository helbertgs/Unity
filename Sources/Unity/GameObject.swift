import Swift

/// Base class for all entities in Scenes
public class GameObject : Object {

    // MARK: - Property(ies).

    /// The  state of this GameObject.
    public var isActive: Bool = true

    /// Gets and sets the GameObject's StaticEditorFlags.
    public var isStatic: Bool = false

    /// The layer the game object is in.
    public var layer: Int = 0

    /// Scene that the GameObject is part of.
    public weak var scene: Scene?

    /// The tag of this game object.
    public var tag: String = ""

    // MARK: - Constructor(s).

    /// Creates a new game object, named name.
    /// - Parameters:
    ///   - name: The name that the GameObject is created with.
    ///   - components: A list of Components to add to the GameObject on creation.
    public init(name: String = "", params components: [Component.Type] = []) {
        super.init()
        self.name = name
    }

    // MARK: - Function(s).

    /// Adds a component class of type componentType to the game object.
    /// - Returns: Component.
    public func add<T>(component: T.Type) -> T where T: Component {
        .init()
    }

    /// Returns the component of Type type if the game object has one attached, null if it doesn't.
    /// - Returns: Component.
    public func get<T>(component: T.Type) -> T? where T: Component {
        .init()
    }

    // MARK: - Static Function(s).

    /// Creates a game object with a primitive mesh renderer and appropriate collider.
    /// - Parameter primitive: The type of primitive object to create.
    /// - Returns: GameObject.
    public static func create(primitive: PrimitiveType) -> GameObject {
        .init()
    }
}
