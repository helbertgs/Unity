import Swift

/// Describes whether a touch is direct, indirect (or remote), or from a stylus.
@frozen
public enum TouchType : String, Equatable, Hashable {
    
    /// A direct touch on a device.
    case direct
    
    /// An Indirect, or remote, touch on a device.
    case indirect
    
    /// A touch from a stylus on a device.
    case stylus
}
