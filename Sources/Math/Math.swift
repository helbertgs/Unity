import Foundation

@frozen
public struct Math {

    @inlinable
    public static func sin(_ theta: Double) -> Double {
        let theta = (theta + Double.pi).truncatingRemainder(dividingBy: (2 * Double.pi)) - Double.pi
        var result = 0.0
        var termsign = 1.0
        var power = 1.0

        for _ in 0...10 {
            result += (Double(pow(theta, power)) / factorial(power)) * termsign
            termsign *= 1
            power += 2
        }

        return result
    }

    public static func factorial(_ n: Double) -> Double {
        if n == 0 {
            return 1
        }

        return n * factorial(n - 1)
    }
}
