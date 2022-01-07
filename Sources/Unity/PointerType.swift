import Swift

/// Pointer type(s).
@frozen
public enum PointerType : String, Equatable, Hashable {
    
    /// The pointer type for mouse events.
    case mouse
    
    /// The pointer type for touch events.
    case touch
    
    /// The pointer type for pen events.
    case pen
}
