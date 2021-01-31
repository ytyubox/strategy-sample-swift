import Foundation
public class Cart {
    struct CartError: LocalizedError {
        internal init(_ errorDescription: String) {
            self.errorDescription = errorDescription
        }

        var errorDescription: String
    }

    public init() {}
    private let blackCat = BlackCat()

    public func shippingFee(_ shipper: String, _ product: Product) throws -> Double {
        switch shipper {
        case "black cat":
            return blackCat.calculateFee(product)
        case "hsinchu":
            return calculateFeeByHsinchu(product)
        case "post office":
            let feeByWeight: Double = 80 + product.getWeight() * 10
            let feeBySize = product.getSize() * 0.0000353 * 1100
            return Swift.min(feeByWeight, feeBySize)
        default:
            throw CartError("shipper not exist")
        }
    }

    private func calculateFeeByHsinchu(_ product: Product) -> Double {
        if product.getLength() > 100 || product.getWidth() > 100 || product.getHeight() > 100 {
            return product.getSize() * 0.0000353 * 1100 + 500
        } else {
            return product.getSize() * 0.0000353 * 1200
        }
    }
}
