import EtsyTypeKit
import Foundation

public extension Shop {
    typealias ShopId = CustomStringConvertible

    enum Request {
        case findAllShops(page: RequestPage)
        case getShop(shopId: ShopId)
        case getListingShop(listingId: Int)
        case findAllUserShops(userId: Int, page: RequestPage)
    }
}

public extension Shop.Request {
    var path: String {
        switch self {
        case .findAllShops:
            return "/shops"
        case let .getShop(shopId):
            return "/shops/\(shopId)"
        case let .getListingShop(listingId):
            return "/shops/listing/\(listingId)"
        case let .findAllUserShops(userId):
            return "/users/\(userId)/shops"
        }
    }

    var queryItems: [URLQueryItem]? {
        switch self {
        case let .findAllShops(page):
            return page.queryItems
        case let .findAllUserShops(_, page):
            return page.queryItems
        default:
            return nil
        }
    }
}
