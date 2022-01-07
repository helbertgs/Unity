import Swift

@frozen
public enum DeviceType : String, Equatable, Hashable {
    
    /// Device type is unknown. You should never see this in practice.
    case unknown
    
    /// A handheld device like mobile phone or a tablet.
    case handheld
    
    /// A stationary gaming console.
    case console
    
    /// Desktop or laptop computer.
    case desktop
}
