import Swift

/// The coordinate space in which to operate.
///
/// Use Space.world to transform a GameObject using Unity’s world coordinates, ignoring the GameObject’s rotation state.
/// Use Space.self to transform a GameObject using its own coordinates and consider its rotations
@frozen
public enum Space : String, Equatable, Hashable {
    
    /// Applies transformation relative to the world coordinate system.
    case world
    
    /// Applies transformation relative to the local coordinate system.
    case `self` 
}
