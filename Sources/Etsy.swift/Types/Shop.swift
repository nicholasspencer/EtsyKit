
import Foundation

public struct Shop: Type {
    var shopId: Int
    var shopName: String
}

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

//"shop_id": 20029736,
//"shop_name": "NefariousThespian",
//"user_id": 10717136,
//"creation_tsz": 1555522034,
//"title": null,
//"announcement": null,
//"currency_code": "USD",
//"is_vacation": false,
//"vacation_message": null,
//"sale_message": null,
//"digital_sale_message": null,
//"last_updated_tsz": 1555522034,
//"listing_active_count": 1,
//"digital_listing_count": 1,
//"login_name": "nicholasspencer",
//"accepts_custom_requests": false,
//"policy_welcome": null,
//"policy_payment": null,
//"policy_shipping": null,
//"policy_refunds": null,
//"policy_additional": null,
//"policy_seller_info": null,
//"policy_updated_tsz": 0,
//"policy_has_private_receipt_info": false,
//"vacation_autoreply": null,
//"url": "https://www.etsy.com/shop/NefariousThespian?utm_source=profitparty&utm_medium=api&utm_campaign=api",
//"image_url_760x100": null,
//"num_favorers": 0,
//"languages": [
//"en-US"
//],
//"upcoming_local_event_id": null,
//"icon_url_fullxfull": null,
//"is_using_structured_policies": false,
//"has_onboarded_structured_policies": false,
//"has_unstructured_policies": false,
//"include_dispute_form_link": false,
//"is_direct_checkout_onboarded": true,
//"policy_privacy": null,
//"is_calculated_eligible": true
