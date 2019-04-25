import Foundation
import StencilSwiftKit

public extension Filter {
    enum Types: String {
        case string
        case int
        case epoch
        case float
        case boolean
        case user_id_or_name
        case shop_id_or_name
        case team_id_or_name
        case treasury_description
        case treasury_id
        case treasury_search_string
        case treasury_title
        case color_triplet
        case color_wiggle
        case latitude
        case longitude
        case image
        case region
        case currency
        case language
        case category
        case taxonomy
        case listing_variation
        case featured_rank
        case stringJSON
    }
}

extension Filter.Types {
    static func etsyType(_ value: Any?, arguments: [Any?]) throws -> Any? {
        let string = try StencilSwiftKit.Filters.Strings.swiftIdentifier(value, arguments: arguments)
        return string
    }
}
