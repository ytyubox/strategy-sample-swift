//
/*
 *		Created by 游宗諭 in 2021/1/31
 *
 *		Using Swift 5.0
 *
 *		Running on macOS 10.15
 */

public class Product {
    public init(_ length: Double, _ width: Double, _ height: Double, _ weight: Double) {
        self.length = length
        self.width = width
        self.height = height
        self.weight = weight
    }

    private let length, width, height, weight: Double

    public func getLength() -> Double {
        return length
    }

    public func getWidth() -> Double {
        return width
    }

    public func getHeight() -> Double {
        return height
    }

    public func getWeight() -> Double {
        return weight
    }
}
