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
        return try getShipper(shipperName).calculateFee(product)
    }

    private func getShipper(_ shipperName: String) throws -> Shipper {
        let shipper: Shipper
        switch shipperName {
        case "black cat":
            shipper = BlackCat()
        case "hsinchu":
            shipper = Hsinchu()
        case "post office":
            shipper = PostOffice()
        default:
            throw CartError("shipper not exist")
        }
        return shipper
    }
}
