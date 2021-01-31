import Foundation
public class Cart {
    struct CartError: LocalizedError {
        internal init(_ errorDescription: String) {
            self.errorDescription = errorDescription
        }

        var errorDescription: String
    }

    private let shippers: [String: Shipper] = [
        "black cat": BlackCat(),
        "hsinchu": Hsinchu(),
        "post office": PostOffice(),
    ]
    public init() {}

    public func shippingFee(_ shipperName: String, _ product: Product) throws -> Double {
        return shippers[shipperName]!.calculateFee(product)
    }
}
