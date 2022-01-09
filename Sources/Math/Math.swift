import Foundation

@frozen
public struct Math {

    @inlinable
    public static func sin(x: Double) -> Double {
        let x = (x + Double.pi).truncatingRemainder(dividingBy: (2 * Double.pi)) - Double.pi
        var y = 0.0
        var t = 1.0
        var p = 1.0

        for _ in 0...10 {
            y += (Double(pow(x, p)) / factorial(p)) * t
            t *= -1
            p += 2
        }

        return y
    }

    @inlinable
    public static func cos(x: Double) -> Double {
        let x = (x + Double.pi).truncatingRemainder(dividingBy: (2 * Double.pi)) - Double.pi
        var y = 0.0
        var t = 1.0
        var p = 0.0

        for _ in 0...10 {
            y += (Double(pow(x, p)) / factorial(p)) * t
            t *= -1
            p += 2
        }

        return y
    }

    public static func factorial(_ n: Double) -> Double {
        n == 0 ? 1 : n * factorial(n - 1)
    }
}
