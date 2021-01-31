import strategy_sample_swift
import XCTest

final class CartTests: XCTestCase {
    private let cart = Cart()
    private let blackCat = "black cat"
    private let hsinchu = "hsinchu"
    private let postOffice = "post office"

    func black_cat_with_light_weight() throws {
        let shippingFee = try cart.shippingFee(blackCat, Product(30, 20, 10, 5))
        feeShouldBe(150, shippingFee)
    }

    func black_cat_with_heavy_weight() throws {
        let shippingFee = try cart.shippingFee(blackCat, Product(30, 20, 10, 50))
        feeShouldBe(500, shippingFee)
    }

    func hsinchu_with_small_size() throws {
        let shippingFee = try cart.shippingFee(hsinchu, Product(30, 20, 10, 50))
        feeShouldBe(144, shippingFee)
    }

    func hsinchu_with_huge_size() throws {
        let shippingFee = try cart.shippingFee(hsinchu, Product(100, 20, 10, 50))
        feeShouldBe(480, shippingFee)
    }

    func post_office_by_weight() throws {
        let shippingFee = try cart.shippingFee(postOffice, Product(100, 20, 10, 3))
        feeShouldBe(110, shippingFee)
    }

    func post_office_by_size() throws {
        let shippingFee = try cart.shippingFee(postOffice, Product(100, 20, 10, 300))
        feeShouldBe(440, shippingFee)
    }

    private func feeShouldBe(_ expected: Double, _ shippingFee: Double) {
        XCTAssertEqual(expected, shippingFee, accuracy: 0.00)
    }
}
