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
    private let postOffice = PostOffice()

    public func shippingFee(_ shipper: String, _ product: Product) throws -> Double {
        switch shipper {
        case "black cat":
            return blackCat.calculateFee(product)
        case "hsinchu":
            return hsinchu.calculateFee(product)
        case "post office":
            return postOffice.calculateFee(product)
        default:
            throw CartError("shipper not exist")
        }
    }
}
