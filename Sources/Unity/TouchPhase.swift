import Swift

/// Describes phase of a finger touch.
/// 
/// TouchPhase is an enum type that contains the states of possible finger touches. 
/// The states represent each action the finger can take on the most recent frame update.
/// Since a touch is tracked over its "lifetime" by the device, the start and end of a touch and movements in between can be reported on the frames they occur.
@frozen
public enum TouchPhase : String, Equatable, Hashable {
    
    /// A finger touched the screen.
    case began
    
    /// A finger moved on the screen.
    case moved
    
    /// A finger is touching the screen but hasn't moved.
    case stationary
    
    /// A finger was lifted from the screen. This is the final phase of a touch.
    case ended
    
    /// The system cancelled tracking for the touch.
    case canceled
}
