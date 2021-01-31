import Foundation
public class Cart {
    struct CartError: LocalizedError {
        internal init(_ errorDescription: String) {
            self.errorDescription = errorDescription
        }

        var errorDescription: String
    }

    public init() {}

    public func shippingFee(_ shipperName: String, _ product: Product) throws -> Double {
        switch shipperName {
        case "black cat":
            let shipper = BlackCat()
            return shipper.calculateFee(product)
        case "hsinchu":
            let shipper = Hsinchu()
            return shipper.calculateFee(product)
        case "post office":
            let shipper = PostOffice()
            return shipper.calculateFee(product)
        default:
            throw CartError("shipper not exist")
        }
    }
}
