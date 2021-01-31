//
/*
 *		Created by 游宗諭 in 2021/1/31
 *
 *		Using Swift 5.0
 *
 *		Running on macOS 10.15
 */

public class Hsinchu: Shipper {
    public init() {}
    public func calculateFee(_ product: Product) -> Double {
        if product.getLength() > 100 || product.getWidth() > 100 || product.getHeight() > 100 {
            return product.getSize() * 0.0000353 * 1100 + 500
        } else {
            return product.getSize() * 0.0000353 * 1200
        }
    }
}
