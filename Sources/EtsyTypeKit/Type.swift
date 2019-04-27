
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen
// DO NOT EDIT

import Foundation

// swiftlint:disable all

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
public typealias Text = String
public typealias VariationsSelectedProperty = [Int: Int]
public typealias GuestId = Int

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

public protocol Type: Codable, Hashable {}

public final class ApiMethod: Type {
    var name: String?
    var uri: String?
    var params: ParamList?
    var defaults: ParamList?
    var type: String?
    var visibility: String?
    var httpMethod: String?
}

public final class Avatar: Type {
    var avatarId: Int?
    var hexCode: String?
    var red: Int?
    var green: Int?
    var blue: Int?
    var hue: Int?
    var saturation: Int?
    var brightness: Int?
    var isBlackAndWhite: Boolean?
    var creationTsz: Float?
    var userId: Int?
}

public final class BillCharge: Type {
    var billChargeId: Int?
    var creationTsz: Float?
    var type: String?
    var typeId: Int?
    var userId: Int?
    var amount: Float?
    var currencyCode: String?
    var creationYear: Int?
    var creationMonth: Int?
    var lastModifiedTsz: Float?
}

public final class BillPayment: Type {
    var billPaymentId: Int?
    var creationTsz: Float?
    var type: String?
    var typeId: Int?
    var userId: Int?
    var amount: Float?
    var currencyCode: String?
    var creationMonth: Int?
    var creationYear: Int?
}

public final class BillingOverview: Type {
    var isOverdue: Boolean?
    var currencyCode: String?
    var overdueBalance: Float?
    var balanceDue: Float?
    var totalBalance: Float?
    var dateDue: Epoch?
    var dateOverdue: Epoch?
}

public final class Cart: Type {
    var cartId: Int?
    var shopName: String?
    var messageToSeller: String?
    var destinationCountryId: Int?
    var couponCode: String?
    var currencyCode: String?
    var total: String?
    var subtotal: String?
    var shippingCost: String?
    var taxCost: String?
    var discountAmount: String?
    var shippingDiscountAmount: String?
    var taxDiscountAmount: String?
    var url: String?
    var listings: [CartListing] = [CartListing]()
    var isDownloadOnly: Boolean?
    var hasVat: Boolean?
    var shippingOption: ShippingOption?
}

public final class CartListing: Type {
    var listingId: Int?
    var purchaseQuantity: Int?
    var purchaseState: String?
    var isDigital: Boolean?
    var fileData: String?
    var listingCustomizationId: Int?
    var variationsAvailable: Boolean?
    var hasVariations: Boolean?
    var selectedVariations: [VariationsSelectedProperty] = [VariationsSelectedProperty]()
}

public final class Category: Type {
    var categoryId: Int?
    var name: String?
    var metaTitle: String?
    var metaKeywords: String?
    var metaDescription: String?
    var pageDescription: String?
    var pageTitle: String?
    var categoryName: String?
    var shortName: String?
    var longName: String?
    var numChildren: Int?
}

public final class Country: Type {
    var countryId: Int?
    var isoCountryCode: String?
    var worldBankCountryCode: String?
    var name: String?
    var slug: String?
    var lat: Float?
    var lon: Float?
}

public final class Coupon: Type {
    var couponId: Int?
    var couponCode: String?
    var sellerActive: Boolean?
    var pctDiscount: Int?
    var freeShipping: Boolean?
    var domesticOnly: Boolean?
    var currencyCode: String?
    var fixedDiscount: String?
    var minimumPurchasePrice: String?
    var expirationDate: Int?
    var couponType: String?
}

public final class DataType: Type {
    var type: String?
    var values: [String] = [String]()
}

public final class FavoriteListing: Type {
    var listingId: Int?
    var userId: Int?
    var listingState: String?
    var createDate: Int?
}

public final class FavoriteUser: Type {
    var userId: Int?
    var favoriteUserId: Int?
    var targetUserId: Int?
    var creationTsz: Float?
}

public final class FeaturedTreasury: Type {
    var treasuryKey: String?
    var treasuryId: Int?
    var treasuryOwnerId: Int?
    var url: String?
    var region: String?
    var activeDate: Float?
}

public final class Feedback: Type {
    var feedbackId: Int?
    var transactionId: Int?
    var creatorUserId: Int?
    var targetUserId: Int?
    var sellerUserId: Int?
    var buyerUserId: Int?
    var creationTsz: Float?
    var message: String?
    var value: Int?
    var imageFeedbackId: Int?
    var imageUrl25x25: String?
    var imageUrl155x125: String?
    var imageUrlFullxfull: String?
}

public final class FeedbackInfo: Type {
    var count: Int?
    var score: Int?
}

public final class ForumPost: Type {
    var threadId: Int?
    var postId: Int?
    var post: String?
    var userId: String?
    var lastEditTime: Int?
    var createDate: Int?
}

public final class Guest: Type {
    var guestId: GuestId?
    var checkoutUrl: String?
}

public final class GuestCart: Type {
    var cartId: Int?
    var shopName: String?
    var messageToSeller: String?
    var destinationCountryId: Int?
    var couponCode: String?
    var currencyCode: String?
    var total: String?
    var subtotal: String?
    var shippingCost: String?
    var taxCost: String?
    var discountAmount: String?
    var shippingDiscountAmount: String?
    var taxDiscountAmount: String?
    var url: String?
    var listings: [CartListing] = [CartListing]()
    var isDownloadOnly: Boolean?
    var hasVat: Boolean?
    var shippingOption: ShippingOption?
}

public final class ImageType: Type {
    var code: String?
    var desc: String?
    var sizes: [String] = [String]()
}

public final class Ledger: Type {
    var ledgerId: Int?
    var shopId: String?
    var currency: String?
    var createDate: Int?
    var updateDate: Int?
}

public final class LedgerEntry: Type {
    var ledgerEntryId: Int?
    var ledgerId: Int?
    var sequence: Int?
    var creditAmount: Int?
    var debitAmount: Int?
    var entryType: String?
    var referenceId: Int?
    var runningBalance: Int?
    var createDate: Int?
}

public final class Listing: Type {
    var listingId: Int?
    var state: String?
    var userId: Int?
    var categoryId: Int?
    var title: String?
    var description: String?
    var creationTsz: Float?
    var endingTsz: Float?
    var originalCreationTsz: Float?
    var lastModifiedTsz: Float?
    var price: String?
    var currencyCode: String?
    var quantity: Int?
    var sku: [String] = [String]()
    var tags: [String] = [String]()
    var categoryPath: [String] = [String]()
    var categoryPathIds: [Int] = [Int]()
    var taxonomyId: Int?
    var suggestedTaxonomyId: Int?
    var taxonomyPath: [String] = [String]()
    var materials: [String] = [String]()
    var shopSectionId: Int?
    var featuredRank: FeaturedRank?
    var stateTsz: Float?
    var url: String?
    var views: Int?
    var numFavorers: Int?
    var shippingTemplateId: Int?
    var shippingProfileId: Int?
    var processingMin: Int?
    var processingMax: Int?
    var whoMade: WhoMade?
    public enum WhoMade: String, Type {
        case iDid = "i_did"
        case collective
        case someoneElse = "someone_else"
    }

    var isSupply: Boolean?
    var whenMade: WhenMade?
    public enum WhenMade: String, Type {
        case madeToOrder = "made_to_order"
        case _20102019 = "2010_2019"
        case _20002009 = "2000_2009"
        case before2000 = "before_2000"
        case _1990s = "1990s"
        case _1980s = "1980s"
        case _1970s = "1970s"
        case _1960s = "1960s"
        case _1950s = "1950s"
        case _1940s = "1940s"
        case _1930s = "1930s"
        case _1920s = "1920s"
        case _1910s = "1910s"
        case _1900s = "1900s"
        case _1800s = "1800s"
        case _1700s = "1700s"
        case before1700 = "before_1700"
    }

    var itemWeight: Int?
    var itemWeightUnit: ItemWeightUnit?
    public enum ItemWeightUnit: String, Type {
        case oz
        case lb
        case g
        case kg
    }

    var itemLength: Int?
    var itemWidth: Int?
    var itemHeight: Int?
    var itemDimensionsUnit: ItemDimensionsUnit?
    public enum ItemDimensionsUnit: String, Type {
        case `in` = "in"
        case ft
        case mm
        case cm
        case m
    }

    var isPrivate: Boolean?
    var recipient: Recipient?
    public enum Recipient: String, Type {
        case men
        case women
        case unisexAdults = "unisex_adults"
        case teenBoys = "teen_boys"
        case teenGirls = "teen_girls"
        case teens
        case boys
        case girls
        case children
        case babyBoys = "baby_boys"
        case babyGirls = "baby_girls"
        case babies
        case birds
        case cats
        case dogs
        case pets
        case notSpecified = "not_specified"
    }

    var occasion: Occasion?
    public enum Occasion: String, Type {
        case anniversary
        case baptism
        case barOrBatMitzvah = "bar_or_bat_mitzvah"
        case birthday
        case canadaDay = "canada_day"
        case chineseNewYear = "chinese_new_year"
        case cincoDeMayo = "cinco_de_mayo"
        case confirmation
        case christmas
        case dayOfTheDead = "day_of_the_dead"
        case easter
        case eid
        case engagement
        case fathersDay = "fathers_day"
        case getWell = "get_well"
        case graduation
        case halloween
        case hanukkah
        case housewarming
        case kwanzaa
        case prom
        case july4th = "july_4th"
        case mothersDay = "mothers_day"
        case newBaby = "new_baby"
        case newYears = "new_years"
        case quinceanera
        case retirement
        case stPatricksDay = "st_patricks_day"
        case sweet16 = "sweet_16"
        case sympathy
        case thanksgiving
        case valentines
        case wedding
    }

    var style: [String] = [String]()
    var nonTaxable: Boolean?
    var isCustomizable: Boolean?
    var isDigital: Boolean?
    var fileData: String?
    var canWriteInventory: Boolean?
    var hasVariations: Boolean?
    var shouldAutoRenew: Boolean?
    var language: Language?
}

public final class ListingFile: Type {
    var listingFileId: Int?
    var listingId: Int?
    var rank: Int?
    var filename: String?
    var filesize: String?
    var sizeBytes: Int?
    var filetype: String?
    var createDate: Int?
}

public final class ListingImage: Type {
    var listingImageId: Int?
    var hexCode: String?
    var red: Int?
    var green: Int?
    var blue: Int?
    var hue: Int?
    var saturation: Int?
    var brightness: Int?
    var isBlackAndWhite: Boolean?
    var creationTsz: Float?
    var listingId: Int?
    var rank: Int?
    var url75x75: String?
    var url170x135: String?
    var url570xN: String?
    var urlFullxfull: String?
    var fullHeight: Int?
    var fullWidth: Int?
}

public final class ListingInventory: Type {
    var products: [ListingProduct] = [ListingProduct]()
    var priceOnProperty: [Int] = [Int]()
    var quantityOnProperty: [Int] = [Int]()
    var skuOnProperty: [Int] = [Int]()
}

public final class ListingOffering: Type {
    var offeringId: Int?
    var price: Money?
    var quantity: Int?
    var isEnabled: Boolean?
    var isDeleted: Boolean?
}

public final class ListingProduct: Type {
    var productId: Int?
    var propertyValues: [PropertyValue] = [PropertyValue]()
    var sku: String?
    var offerings: [ListingOffering] = [ListingOffering]()
    var isDeleted: Boolean?
}

public final class ListingTranslation: Type {
    var listingId: Int?
    var language: Language?
    var title: String?
    var description: String?
    var tags: [String] = [String]()
}

public final class Money: Type {
    var amount: Int?
    var divisor: Int?
    var currencyCode: String?
    var formattedRaw: String?
    var formattedShort: String?
    var formattedLong: String?
    var originalCurrencyCode: String?
    var beforeConversion: Money?
}

public final class ParamList: Type {
    var paramName: String?
}

public final class Payment: Type {
    var paymentId: Int?
    var buyerUserId: Int?
    var shopId: Int?
    var receiptId: Int?
    var amountGross: Int?
    var amountFees: Int?
    var amountNet: Int?
    var postedGross: Int?
    var postedFees: Int?
    var postedNet: Int?
    var adjustedGross: Int?
    var adjustedFees: Int?
    var adjustedNet: Int?
    var currency: String?
    var shopCurrency: String?
    var buyerCurrency: String?
    var shippingUserId: Int?
    var shippingAddressId: Int?
    var billingAddressId: Int?
    var status: String?
    var shippedDate: Int?
    var createDate: Int?
    var updateDate: Int?
}

public final class PaymentAccountLedgerEntry: Type {
    var entryId: Int?
    var ledgerId: Int?
    var sequenceNumber: Int?
    var amount: Int?
    var currency: String?
    var description: String?
    var balance: Int?
    var createDate: Int?
}

public final class PaymentAdjustment: Type {
    var paymentAdjustmentId: Int?
    var paymentId: Int?
    var status: String?
    var isSuccess: Boolean?
    var userId: Int?
    var reasonCode: String?
    var totalAdjustmentAmount: Int?
    var shopTotalAdjustmentAmount: Int?
    var buyerTotalAdjustmentAmount: Int?
    var totalFeeAdjustmentAmount: Int?
    var createDate: Int?
    var updateDate: Int?
}

public final class PaymentAdjustmentItem: Type {
    var paymentAdjustmentItemId: Int?
    var paymentAdjustmentId: Int?
    var adjustmentType: String?
    var amount: Int?
    var transactionId: Int?
    var createDate: Int?
}

public final class PaymentTemplate: Type {
    var paymentTemplateId: Int?
    var allowBt: Boolean?
    var allowCheck: Boolean?
    var allowMo: Boolean?
    var allowOther: Boolean?
    var allowPaypal: Boolean?
    var allowCc: Boolean?
    var paypalEmail: String?
    var name: String?
    var firstLine: String?
    var secondLine: String?
    var city: String?
    var state: String?
    var zip: String?
    var countryId: Int?
    var userId: Int?
    var listingPaymentId: Int?
}

public final class PropertyValue: Type {
    var propertyId: Int?
    var propertyName: String?
    var scaleId: Int?
    var scaleName: String?
    var valueIds: [Int] = [Int]()
    var values: [String] = [String]()
}

public final class Receipt: Type {
    var receiptId: Int?
    var receiptType: Int?
    var orderId: Int?
    var sellerUserId: Int?
    var buyerUserId: Int?
    var creationTsz: Float?
    var lastModifiedTsz: Float?
    var name: String?
    var firstLine: String?
    var secondLine: String?
    var city: String?
    var state: String?
    var zip: String?
    var formattedAddress: String?
    var countryId: Int?
    var paymentMethod: String?
    var paymentEmail: String?
    var messageFromSeller: String?
    var messageFromBuyer: String?
    var wasPaid: Boolean?
    var totalTaxCost: Float?
    var totalVatCost: Float?
    var totalPrice: Float?
    var totalShippingCost: Float?
    var currencyCode: String?
    var messageFromPayment: String?
    var wasShipped: Boolean?
    var buyerEmail: String?
    var sellerEmail: String?
    var isGift: Boolean?
    var needsGiftWrap: Boolean?
    var giftMessage: String?
    var giftWrapPrice: Float?
    var discountAmt: Float?
    var subtotal: Float?
    var grandtotal: Float?
    var adjustedGrandtotal: Float?
    var shipments: [ReceiptShipment] = [ReceiptShipment]()
}

public final class ReceiptShipment: Type {
    var carrierName: String?
    var receiptShippingId: Int?
    var trackingCode: String?
    var trackingUrl: String?
    var buyerNote: String?
    var notificationDate: Int?
}

public final class Region: Type {
    var regionId: Int?
    var regionName: String?
    var isDead: Boolean?
}

public final class Segment: Type {
    var name: String?
    var path: String?
    var shortName: String?
    var hasChildren: Boolean?
    var imageUrl: String?
    var shopId: Int?
    var shopName: Int?
    var listingId: Int?
}

public final class SegmentPoster: Type {
    var name: String?
    var path: String?
    var imageUrl: String?
    var shopId: Int?
    var shopName: Int?
    var weight: Int?
    var listingId: Int?
}

public final class ShippingInfo: Type {
    var shippingInfoId: Int?
    var originCountryId: Int?
    var destinationCountryId: Int?
    var currencyCode: String?
    var primaryCost: Float?
    var secondaryCost: Float?
    var listingId: Int?
    var regionId: Int?
    var originCountryName: String?
    var destinationCountryName: String?
}

public final class ShippingOption: Type {
    var optionId: String?
    var name: String?
    var optionType: Int?
    var cost: String?
    var currencyCode: String?
}

public final class ShippingTemplate: Type {
    var shippingTemplateId: Int?
    var title: String?
    var userId: Int?
    var minProcessingDays: Int?
    var maxProcessingDays: Int?
    var processingDaysDisplayLabel: String?
    var originCountryId: Int?
}

public final class ShippingTemplateEntry: Type {
    var shippingTemplateEntryId: Int?
    var shippingTemplateId: Int?
    var currencyCode: String?
    var originCountryId: Int?
    var destinationCountryId: Int?
    var destinationRegionId: Int?
    var primaryCost: Float?
    var secondaryCost: Float?
}

public final class ShippingUpgrade: Type {
    var shippingProfileId: Int?
    var valueId: Int?
    var value: String?
    var price: Float?
    var secondaryPrice: Float?
    var currencyCode: String?
    var type: Int?
    var order: Int?
    var language: Int?
}

public final class Shop: Type {
    var shopId: Int?
    var shopName: String?
    var firstLine: String?
    var secondLine: String?
    var city: String?
    var state: String?
    var zip: String?
    var countryId: Int?
    var userId: Int?
    var creationTsz: Float?
    var title: String?
    var announcement: String?
    var currencyCode: String?
    var isVacation: Boolean?
    var vacationMessage: String?
    var saleMessage: String?
    var digitalSaleMessage: String?
    var lastUpdatedTsz: Float?
    var listingActiveCount: Int?
    var digitalListingCount: Int?
    var loginName: String?
    var lat: Float?
    var lon: Float?
    var acceptsCustomRequests: Boolean?
    var policyWelcome: String?
    var policyPayment: String?
    var policyShipping: String?
    var policyRefunds: String?
    var policyAdditional: String?
    var policySellerInfo: String?
    var policyUpdatedTsz: Float?
    var policyHasPrivateReceiptInfo: Boolean?
    var vacationAutoreply: String?
    var gaCode: String?
    var name: String?
    var url: String?
    var imageUrl760x100: String?
    var numFavorers: Int?
    var languages: [String] = [String]()
    var upcomingLocalEventId: Int?
    var iconUrlFullxfull: String?
    var isUsingStructuredPolicies: Boolean?
    var hasOnboardedStructuredPolicies: Boolean?
    var hasUnstructuredPolicies: Boolean?
    var policyPrivacy: String?
    var useNewInventoryEndpoints: Boolean?
    var includeDisputeFormLink: Boolean?
}

public final class ShopAbout: Type {
    var shopId: Int?
    var status: String?
    var storyHeadline: String?
    var storyLeadingParagraph: String?
    var story: String?
    var relatedLinks: [String] = [String]()
    var url: String?
}

public final class ShopAboutImage: Type {
    var shopId: Int?
    var imageId: Int?
    var caption: String?
    var rank: Int?
    var url178x178: String?
    var url545xN: String?
    var url760xN: String?
    var urlFullxfull: String?
}

public final class ShopAboutMember: Type {
    var shopAboutMemberId: Int?
    var shopId: Int?
    var name: String?
    var role: String?
    var bio: String?
    var rank: Int?
    var isOwner: Boolean?
    var url90x90: String?
    var url190x190: String?
    var hasStaleTranslations: Boolean?
}

public final class ShopSection: Type {
    var shopSectionId: Int?
    var title: String?
    var rank: Int?
    var userId: Int?
    var activeListingCount: Int?
}

public final class ShopSectionTranslation: Type {
    var shopSectionId: Int?
    var language: Language?
    var title: String?
}

public final class ShopTranslation: Type {
    var shopId: Int?
    var language: Language?
    var announcement: String?
    var policyWelcome: String?
    var policyPayment: String?
    var policyShipping: String?
    var policyRefunds: String?
    var policyAdditional: String?
    var policyPrivacy: String?
    var policySellerInfo: String?
    var saleMessage: String?
    var digitalSaleMessage: String?
    var title: String?
    var vacationAutoreply: String?
    var vacationMessage: String?
}

public final class StructuredPolicies: Type {
    var structuredPoliciesId: Int?
    var createDate: Int?
    var updateDate: Int?
    var createDateFormatted: String?
    var updateDateFormatted: String?
    var hasUnstructuredPolicies: Boolean?
    var additionalTermsAndConditions: String?
    var shopInGermany: Boolean?
    var includeDisputeFormLink: Boolean?
}

public final class Style: Type {
    var styleId: Int?
    var style: String?
}

public final class Taxonomy: Type {
    var id: Int?
    var level: Int?
    var name: String?
    var parent: String?
    var parentId: Int?
    var path: String?
    var categoryId: Int?
    var children: [Taxonomy] = [Taxonomy]()
    var childrenIds: [Int] = [Int]()
    var fullPathTaxonomyIds: [Int] = [Int]()
}

public final class TaxonomyNodeProperty: Type {
    var propertyId: Int?
    var name: String?
    var displayName: String?
    var scales: [TaxonomyPropertyScale] = [TaxonomyPropertyScale]()
    var isRequired: Boolean?
    var supportsAttributes: Boolean?
    var supportsVariations: Boolean?
    var isMultivalued: Boolean?
    var possibleValues: [TaxonomyPropertyValue] = [TaxonomyPropertyValue]()
    var selectedValues: [TaxonomyPropertyValue] = [TaxonomyPropertyValue]()
}

public final class TaxonomyPropertyScale: Type {
    var scaleId: Int?
    var displayName: String?
    var description: String?
}

public final class TaxonomyPropertyValue: Type {
    var valueId: Int?
    var name: String?
    var scaleId: Int?
    var order: Int?
    var equalTo: [Int] = [Int]()
}

public final class Team: Type {
    var groupId: Int?
    var name: String?
    var createDate: Int?
    var updateDate: Int?
    var tags: [String] = [String]()
}

public final class Transaction: Type {
    var transactionId: Int?
    var title: String?
    var description: String?
    var sellerUserId: Int?
    var buyerUserId: Int?
    var creationTsz: Float?
    var paidTsz: Float?
    var shippedTsz: Float?
    var price: Float?
    var currencyCode: String?
    var quantity: Int?
    var tags: [String] = [String]()
    var materials: [String] = [String]()
    var imageListingId: Int?
    var receiptId: Int?
    var shippingCost: Float?
    var isDigital: Boolean?
    var fileData: String?
    var listingId: Int?
    var isQuickSale: Boolean?
    var sellerFeedbackId: Int?
    var buyerFeedbackId: Int?
    var transactionType: String?
    var url: String?
    var variations: [ListingInventory] = [ListingInventory]()
    var productData: ListingProduct?
}

public final class Treasury: Type {
    var id: String?
    var title: String?
    var description: String?
    var homepage: Int?
    var mature: Boolean?
    var `private`: Boolean?
    var locale: String?
    var commentCount: Int?
    var tags: [String] = [String]()
    var counts: TreasuryCounts?
    var hotness: Float?
    var hotnessColor: String?
    var userId: Int?
    var userName: String?
    var userAvatarId: Int?
    var listings: [TreasuryListing] = [TreasuryListing]()
    var creationTsz: Float?
    var becamePublicDate: Int?
}

public final class TreasuryCounts: Type {
    var clicks: Int?
    var views: Int?
    var shares: Int?
    var reports: Int?
}

public final class TreasuryListing: Type {
    var data: TreasuryListingData?
    var creationTsz: Float?
}

public final class TreasuryListingData: Type {
    var userId: Int?
    var title: String?
    var price: Float?
    var currencyCode: String?
    var listingId: Int?
    var state: String?
    var shopName: String?
    var imageId: Int?
    var imageUrl75x75: String?
    var imageUrl170x135: String?
}

public final class User: Type {
    var userId: Int?
    var loginName: String?
    var primaryEmail: String?
    var creationTsz: Float?
    var userPubKey: StringJSON?
    var referredByUserId: Int?
    var feedbackInfo: FeedbackInfo?
    var awaitingFeedbackCount: Int?
    var useNewInventoryEndpoints: Boolean?
}

public final class UserAddress: Type {
    var userAddressId: Int?
    var userId: Int?
    var name: Text?
    var firstLine: Text?
    var secondLine: Text?
    var city: Text?
    var state: Text?
    var zip: Text?
    var countryId: Int?
    var countryName: String?
    var isDefaultShipping: Boolean?
}

public final class UserProfile: Type {
    var userProfileId: Int?
    var userId: Int?
    var loginName: String?
    var bio: String?
    var gender: String?
    var birthMonth: String?
    var birthDay: String?
    var birthYear: String?
    var joinTsz: Float?
    var materials: String?
    var countryId: Int?
    var region: String?
    var city: String?
    var location: String?
    var avatarId: Int?
    var lat: Float?
    var lon: Float?
    var transactionBuyCount: Int?
    var transactionSoldCount: Int?
    var isSeller: Boolean?
    var imageUrl75x75: String?
    var firstName: String?
    var lastName: String?
}
