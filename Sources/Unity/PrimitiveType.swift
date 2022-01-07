import Swift

/// The various primitives that can be created using `GameObject.CreatePrimitive` function.
@frozen
public enum PrimitiveType : String, Equatable, Hashable {
    
    /// A sphere primitive.
    case sphere
    
    /// A capsule primitive.
    case capsule
    
    /// A cylinder primitive.
    case cylinder
    
    /// A cube primitive.
    case cube
    
    /// A plane primitive.
    case plane
    
    /// A quad primitive.
    case quad
}
