import Foundation
public class Cart {
    struct CartError: LocalizedError {
        internal init(_ errorDescription: String) {
            self.errorDescription = errorDescription
        }

        var errorDescription: String
    }

    public func shippingFee(shipper: String, length: Double, width: Double, height: Double, weight: Double) throws -> Double {
        if shipper == "black cat" {
            if weight > 20 {
                return 500
            } else {
                return 100 + weight * 10
            }
        } else if shipper == "hsinchu" {
            let size: Double = length * width * height
            if length > 100 || width > 100 || height > 100 {
                return size * 0.0000353 * 1100 + 500
            } else {
                return size * 0.0000353 * 1200
            }
        } else if shipper == "post office" {
            let feeByWeight: Double = 80 + weight * 10
            let size = length * width * height
            let feeBySize = size * 0.0000353 * 1100
            return feeByWeight < feeBySize ? feeByWeight : feeBySize
        } else {
            throw CartError("shipper not exist")
        }
    }
}
