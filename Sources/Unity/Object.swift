import Swift
import Foundation

/// Base class for all objects Unity can reference.
public class Object: Equatable, Hashable, Identifiable {
    
    // MARK: - Property(ies).

    public var id: UUID
    
    /// Should the object be hidden, saved with the Scene or modifiable by the user?
    public var hideFlags: HideFlags
    
    /// The name of the object.
    public var name: String

    // MARK: - Constructor(s).

    public init(id: UUID = .init(), hideFlags: HideFlags = .none, name: String = "") {
        self.id = id
        self.hideFlags = hideFlags
        self.name = name
    }

    // MARK: - Function(s).

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(hideFlags)
        hasher.combine(name)
    }

    // MARK: - Static Function(s).

    public static func == (_ lhs: Object, _ rhs: Object) -> Bool {
        lhs.id == rhs.id &&
        lhs.hideFlags ==
        rhs.hideFlags &&
        lhs.name == rhs.name
    }
}
