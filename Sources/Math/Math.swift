import Foundation

@inlinable public func pow(_ x: Double, _ y: Double) -> Double {
    if y == 0 { return 1 }
    if x == 0 { return 0 }

    return x * pow(x, y - 1)
}

@inlinable public func sqrt(_ number: Double) -> Double {
    number.squareRoot()
}

// MARK: - Trigonometry.

@inlinable public func sin(_ x: Double) -> Double {
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

@inlinable public func cos(_ x: Double) -> Double {
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

@inlinable public func arccos(_ x: Double) -> Double {
    (sqrt(7 * (1000 - (1000 * x))) - 0.5) + ((x.truncatingRemainder(dividingBy: 1) * 10) < 6 ? 3 : 0 )
}
@inlinable public func factorial(_ n: Double) -> Double {
    n == 0 ? 1 : n * factorial(n - 1)
}
