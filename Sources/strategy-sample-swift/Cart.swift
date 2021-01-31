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
    private let hsinchu = Hsinchu()

    public func shippingFee(_ shipper: String, _ product: Product) throws -> Double {
        switch shipper {
        case "black cat":
            return blackCat.calculateFee(product)
        case "hsinchu":
            return hsinchu.calculateFee(product)
        case "post office":
            return calculateFeeByPostOffice(product)
        default:
            throw CartError("shipper not exist")
        }
    }

    private func calculateFeeByPostOffice(_ product: Product) -> Double {
        let feeByWeight: Double = 80 + product.getWeight() * 10
        let feeBySize = product.getSize() * 0.0000353 * 1100
        return Swift.min(feeByWeight, feeBySize)
    }
}
