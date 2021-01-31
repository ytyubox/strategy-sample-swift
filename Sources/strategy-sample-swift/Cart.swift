import Foundation
public class Cart {
    struct CartError: LocalizedError {
        internal init(_ errorDescription: String) {
            self.errorDescription = errorDescription
        }

        var errorDescription: String
    }

    public init() {}

    public func shippingFee(_ shipper: String, _ product: Product) throws -> Double {
        switch shipper {
        case "black cat":
            return BlackCat().calculateFee(product)
        case "hsinchu":
            return Hsinchu().calculateFee(product)
        case "post office":
            return PostOffice().calculateFee(product)
        default:
            throw CartError("shipper not exist")
        }
    }
}
