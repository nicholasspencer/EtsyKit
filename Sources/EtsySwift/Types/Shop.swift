
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
        case .getShop(let shopId):
            return "/shops/\(shopId)"
        case .getListingShop(let listingId):
            return "/shops/listing/\(listingId)"
        case .findAllUserShops(let userId):
            return "/users/\(userId)/shops"
        }
    }

    var queryItems: [URLQueryItem]? {
        switch self {
        case .findAllShops(let page):
            return page.queryItems
        case .findAllUserShops(_, let page):
            return page.queryItems
        default:
            return nil
        }
    }
}