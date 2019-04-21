import Foundation
import Stencil
import StencilSwiftKit

public typealias Epoch = TimeInterval
public typealias TreasuryDescription = String
public typealias TreasuryId = String
public typealias TreasurySearchString = String
public typealias TreasuryTitle = String
public typealias Latitude = Double
public typealias Longitude = Double
public typealias Region = String
public typealias Currency = String
public typealias Language = String
public typealias Category = String
public typealias FeaturedRank = Int
public typealias StringJSON = String

public enum Type: String {
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