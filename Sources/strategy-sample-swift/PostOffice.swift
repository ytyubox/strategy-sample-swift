//
/*
 *		Created by 游宗諭 in 2021/1/31
 *
 *		Using Swift 5.0
 *
 *		Running on macOS 10.15
 */

public class PostOffice: Shipper {
    public init() {}
    public func calculateFee(_ product: Product) -> Double {
        let feeByWeight: Double = 80 + product.getWeight() * 10
        let feeBySize = product.getSize() * 0.0000353 * 1100
        return Swift.min(feeByWeight, feeBySize)
    }
}
