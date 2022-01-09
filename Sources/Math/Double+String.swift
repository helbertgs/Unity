import Swift

extension Double {
    @inlinable
    public func rounded(_ x: UInt) -> Double {
        Double(String(format: "%.\(x)f", self)) ?? 0
    }
}
