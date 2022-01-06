import Swift

/// Base class for all objects Unity can reference.
public class Object {
    
    // MARK: - Property(ies).
    
    /// Should the object be hidden, saved with the Scene or modifiable by the user?
    public var hideFlags: HideFlags = .none
    
    /// The name of the object.
    public var name: String = ""
}
