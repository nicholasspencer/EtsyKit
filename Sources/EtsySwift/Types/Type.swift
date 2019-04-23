
import Foundation

public typealias Epoch = TimeInterval
public typealias TreasuryDescription = String
public typealias TreasuryId = String
public typealias TreasurySearchString = String
public typealias TreasuryTitle = String
public typealias Latitude = Double
public typealias Longitude = Double
public typealias Currency = String
public typealias Language = String
public typealias FeaturedRank = Int
public typealias StringJSON = String
public typealias Boolean = Bool

public protocol EtsyType: Codable, Hashable {}
