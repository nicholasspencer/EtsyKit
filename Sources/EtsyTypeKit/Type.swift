
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
public typealias VariationsSelectedProperty = [Int:Int]
public typealias GuestId = Int

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

public protocol Type: Codable, Hashable {}

public final class ApiMethod: Type {
    var name: String? = nil
    var uri: String? = nil
    var params: ParamList? = nil
    var defaults: ParamList? = nil
    var type: String? = nil
    var visibility: String? = nil
    var httpMethod: String? = nil
}

public final class Avatar: Type {
    var avatarId: Int? = nil
    var hexCode: String? = nil
    var red: Int? = nil
    var green: Int? = nil
    var blue: Int? = nil
    var hue: Int? = nil
    var saturation: Int? = nil
    var brightness: Int? = nil
    var isBlackAndWhite: Boolean? = nil
    var creationTsz: Float? = nil
    var userId: Int? = nil
}

public final class BillCharge: Type {
    var billChargeId: Int? = nil
    var creationTsz: Float? = nil
    var type: String? = nil
    var typeId: Int? = nil
    var userId: Int? = nil
    var amount: Float? = nil
    var currencyCode: String? = nil
    var creationYear: Int? = nil
    var creationMonth: Int? = nil
    var lastModifiedTsz: Float? = nil
}

public final class BillPayment: Type {
    var billPaymentId: Int? = nil
    var creationTsz: Float? = nil
    var type: String? = nil
    var typeId: Int? = nil
    var userId: Int? = nil
    var amount: Float? = nil
    var currencyCode: String? = nil
    var creationMonth: Int? = nil
    var creationYear: Int? = nil
}

public final class BillingOverview: Type {
    var isOverdue: Boolean? = nil
    var currencyCode: String? = nil
    var overdueBalance: Float? = nil
    var balanceDue: Float? = nil
    var totalBalance: Float? = nil
    var dateDue: Epoch? = nil
    var dateOverdue: Epoch? = nil
}

public final class Cart: Type {
    var cartId: Int? = nil
    var shopName: String? = nil
    var messageToSeller: String? = nil
    var destinationCountryId: Int? = nil
    var couponCode: String? = nil
    var currencyCode: String? = nil
    var total: String? = nil
    var subtotal: String? = nil
    var shippingCost: String? = nil
    var taxCost: String? = nil
    var discountAmount: String? = nil
    var shippingDiscountAmount: String? = nil
    var taxDiscountAmount: String? = nil
    var url: String? = nil
    var listings: [CartListing] = [CartListing]()
    var isDownloadOnly: Boolean? = nil
    var hasVat: Boolean? = nil
    var shippingOption: ShippingOption? = nil
}

public final class CartListing: Type {
    var listingId: Int? = nil
    var purchaseQuantity: Int? = nil
    var purchaseState: String? = nil
    var isDigital: Boolean? = nil
    var fileData: String? = nil
    var listingCustomizationId: Int? = nil
    var variationsAvailable: Boolean? = nil
    var hasVariations: Boolean? = nil
    var selectedVariations: [VariationsSelectedProperty] = [VariationsSelectedProperty]()
}

public final class Category: Type {
    var categoryId: Int? = nil
    var name: String? = nil
    var metaTitle: String? = nil
    var metaKeywords: String? = nil
    var metaDescription: String? = nil
    var pageDescription: String? = nil
    var pageTitle: String? = nil
    var categoryName: String? = nil
    var shortName: String? = nil
    var longName: String? = nil
    var numChildren: Int? = nil
}

public final class Country: Type {
    var countryId: Int? = nil
    var isoCountryCode: String? = nil
    var worldBankCountryCode: String? = nil
    var name: String? = nil
    var slug: String? = nil
    var lat: Float? = nil
    var lon: Float? = nil
}

public final class Coupon: Type {
    var couponId: Int? = nil
    var couponCode: String? = nil
    var sellerActive: Boolean? = nil
    var pctDiscount: Int? = nil
    var freeShipping: Boolean? = nil
    var domesticOnly: Boolean? = nil
    var currencyCode: String? = nil
    var fixedDiscount: String? = nil
    var minimumPurchasePrice: String? = nil
    var expirationDate: Int? = nil
    var couponType: String? = nil
}

public final class DataType: Type {
    var type: String? = nil
    var values: [String] = [String]()
}

public final class FavoriteListing: Type {
    var listingId: Int? = nil
    var userId: Int? = nil
    var listingState: String? = nil
    var createDate: Int? = nil
}

public final class FavoriteUser: Type {
    var userId: Int? = nil
    var favoriteUserId: Int? = nil
    var targetUserId: Int? = nil
    var creationTsz: Float? = nil
}

public final class FeaturedTreasury: Type {
    var treasuryKey: String? = nil
    var treasuryId: Int? = nil
    var treasuryOwnerId: Int? = nil
    var url: String? = nil
    var region: String? = nil
    var activeDate: Float? = nil
}

public final class Feedback: Type {
    var feedbackId: Int? = nil
    var transactionId: Int? = nil
    var creatorUserId: Int? = nil
    var targetUserId: Int? = nil
    var sellerUserId: Int? = nil
    var buyerUserId: Int? = nil
    var creationTsz: Float? = nil
    var message: String? = nil
    var value: Int? = nil
    var imageFeedbackId: Int? = nil
    var imageUrl25x25: String? = nil
    var imageUrl155x125: String? = nil
    var imageUrlFullxfull: String? = nil
}

public final class FeedbackInfo: Type {
    var count: Int? = nil
    var score: Int? = nil
}

public final class ForumPost: Type {
    var threadId: Int? = nil
    var postId: Int? = nil
    var post: String? = nil
    var userId: String? = nil
    var lastEditTime: Int? = nil
    var createDate: Int? = nil
}

public final class Guest: Type {
    var guestId: GuestId? = nil
    var checkoutUrl: String? = nil
}

public final class GuestCart: Type {
    var cartId: Int? = nil
    var shopName: String? = nil
    var messageToSeller: String? = nil
    var destinationCountryId: Int? = nil
    var couponCode: String? = nil
    var currencyCode: String? = nil
    var total: String? = nil
    var subtotal: String? = nil
    var shippingCost: String? = nil
    var taxCost: String? = nil
    var discountAmount: String? = nil
    var shippingDiscountAmount: String? = nil
    var taxDiscountAmount: String? = nil
    var url: String? = nil
    var listings: [CartListing] = [CartListing]()
    var isDownloadOnly: Boolean? = nil
    var hasVat: Boolean? = nil
    var shippingOption: ShippingOption? = nil
}

public final class ImageType: Type {
    var code: String? = nil
    var desc: String? = nil
    var sizes: [String] = [String]()
}

public final class Ledger: Type {
    var ledgerId: Int? = nil
    var shopId: String? = nil
    var currency: String? = nil
    var createDate: Int? = nil
    var updateDate: Int? = nil
}

public final class LedgerEntry: Type {
    var ledgerEntryId: Int? = nil
    var ledgerId: Int? = nil
    var sequence: Int? = nil
    var creditAmount: Int? = nil
    var debitAmount: Int? = nil
    var entryType: String? = nil
    var referenceId: Int? = nil
    var runningBalance: Int? = nil
    var createDate: Int? = nil
}

public final class Listing: Type {
    var listingId: Int? = nil
    var state: String? = nil
    var userId: Int? = nil
    var categoryId: Int? = nil
    var title: String? = nil
    var description: String? = nil
    var creationTsz: Float? = nil
    var endingTsz: Float? = nil
    var originalCreationTsz: Float? = nil
    var lastModifiedTsz: Float? = nil
    var price: String? = nil
    var currencyCode: String? = nil
    var quantity: Int? = nil
    var sku: [String] = [String]()
    var tags: [String] = [String]()
    var categoryPath: [String] = [String]()
    var categoryPathIds: [Int] = [Int]()
    var taxonomyId: Int? = nil
    var suggestedTaxonomyId: Int? = nil
    var taxonomyPath: [String] = [String]()
    var materials: [String] = [String]()
    var shopSectionId: Int? = nil
    var featuredRank: FeaturedRank? = nil
    var stateTsz: Float? = nil
    var url: String? = nil
    var views: Int? = nil
    var numFavorers: Int? = nil
    var shippingTemplateId: Int? = nil
    var shippingProfileId: Int? = nil
    var processingMin: Int? = nil
    var processingMax: Int? = nil
    var whoMade: WhoMade? = nil
    public enum WhoMade: String, Type {
        case iDid = "i_did"
        case collective = "collective"
        case someoneElse = "someone_else"
    }
    var isSupply: Boolean? = nil
    var whenMade: WhenMade? = nil
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
    var itemWeight: Int? = nil
    var itemWeightUnit: ItemWeightUnit? = nil
    public enum ItemWeightUnit: String, Type {
        case oz = "oz"
        case lb = "lb"
        case g = "g"
        case kg = "kg"
    }
    var itemLength: Int? = nil
    var itemWidth: Int? = nil
    var itemHeight: Int? = nil
    var itemDimensionsUnit: ItemDimensionsUnit? = nil
    public enum ItemDimensionsUnit: String, Type {
        case `in` = "in"
        case ft = "ft"
        case mm = "mm"
        case cm = "cm"
        case m = "m"
    }
    var isPrivate: Boolean? = nil
    var recipient: Recipient? = nil
    public enum Recipient: String, Type {
        case men = "men"
        case women = "women"
        case unisexAdults = "unisex_adults"
        case teenBoys = "teen_boys"
        case teenGirls = "teen_girls"
        case teens = "teens"
        case boys = "boys"
        case girls = "girls"
        case children = "children"
        case babyBoys = "baby_boys"
        case babyGirls = "baby_girls"
        case babies = "babies"
        case birds = "birds"
        case cats = "cats"
        case dogs = "dogs"
        case pets = "pets"
        case notSpecified = "not_specified"
    }
    var occasion: Occasion? = nil
    public enum Occasion: String, Type {
        case anniversary = "anniversary"
        case baptism = "baptism"
        case barOrBatMitzvah = "bar_or_bat_mitzvah"
        case birthday = "birthday"
        case canadaDay = "canada_day"
        case chineseNewYear = "chinese_new_year"
        case cincoDeMayo = "cinco_de_mayo"
        case confirmation = "confirmation"
        case christmas = "christmas"
        case dayOfTheDead = "day_of_the_dead"
        case easter = "easter"
        case eid = "eid"
        case engagement = "engagement"
        case fathersDay = "fathers_day"
        case getWell = "get_well"
        case graduation = "graduation"
        case halloween = "halloween"
        case hanukkah = "hanukkah"
        case housewarming = "housewarming"
        case kwanzaa = "kwanzaa"
        case prom = "prom"
        case july4th = "july_4th"
        case mothersDay = "mothers_day"
        case newBaby = "new_baby"
        case newYears = "new_years"
        case quinceanera = "quinceanera"
        case retirement = "retirement"
        case stPatricksDay = "st_patricks_day"
        case sweet16 = "sweet_16"
        case sympathy = "sympathy"
        case thanksgiving = "thanksgiving"
        case valentines = "valentines"
        case wedding = "wedding"
    }
    var style: [String] = [String]()
    var nonTaxable: Boolean? = nil
    var isCustomizable: Boolean? = nil
    var isDigital: Boolean? = nil
    var fileData: String? = nil
    var canWriteInventory: Boolean? = nil
    var hasVariations: Boolean? = nil
    var shouldAutoRenew: Boolean? = nil
    var language: Language? = nil
}

public final class ListingFile: Type {
    var listingFileId: Int? = nil
    var listingId: Int? = nil
    var rank: Int? = nil
    var filename: String? = nil
    var filesize: String? = nil
    var sizeBytes: Int? = nil
    var filetype: String? = nil
    var createDate: Int? = nil
}

public final class ListingImage: Type {
    var listingImageId: Int? = nil
    var hexCode: String? = nil
    var red: Int? = nil
    var green: Int? = nil
    var blue: Int? = nil
    var hue: Int? = nil
    var saturation: Int? = nil
    var brightness: Int? = nil
    var isBlackAndWhite: Boolean? = nil
    var creationTsz: Float? = nil
    var listingId: Int? = nil
    var rank: Int? = nil
    var url75x75: String? = nil
    var url170x135: String? = nil
    var url570xN: String? = nil
    var urlFullxfull: String? = nil
    var fullHeight: Int? = nil
    var fullWidth: Int? = nil
}

public final class ListingInventory: Type {
    var products: [ListingProduct] = [ListingProduct]()
    var priceOnProperty: [Int] = [Int]()
    var quantityOnProperty: [Int] = [Int]()
    var skuOnProperty: [Int] = [Int]()
}

public final class ListingOffering: Type {
    var offeringId: Int? = nil
    var price: Money? = nil
    var quantity: Int? = nil
    var isEnabled: Boolean? = nil
    var isDeleted: Boolean? = nil
}

public final class ListingProduct: Type {
    var productId: Int? = nil
    var propertyValues: [PropertyValue] = [PropertyValue]()
    var sku: String? = nil
    var offerings: [ListingOffering] = [ListingOffering]()
    var isDeleted: Boolean? = nil
}

public final class ListingTranslation: Type {
    var listingId: Int? = nil
    var language: Language? = nil
    var title: String? = nil
    var description: String? = nil
    var tags: [String] = [String]()
}

public final class Money: Type {
    var amount: Int? = nil
    var divisor: Int? = nil
    var currencyCode: String? = nil
    var formattedRaw: String? = nil
    var formattedShort: String? = nil
    var formattedLong: String? = nil
    var originalCurrencyCode: String? = nil
    var beforeConversion: Money? = nil
}

public final class ParamList: Type {
    var paramName: String? = nil
}

public final class Payment: Type {
    var paymentId: Int? = nil
    var buyerUserId: Int? = nil
    var shopId: Int? = nil
    var receiptId: Int? = nil
    var amountGross: Int? = nil
    var amountFees: Int? = nil
    var amountNet: Int? = nil
    var postedGross: Int? = nil
    var postedFees: Int? = nil
    var postedNet: Int? = nil
    var adjustedGross: Int? = nil
    var adjustedFees: Int? = nil
    var adjustedNet: Int? = nil
    var currency: String? = nil
    var shopCurrency: String? = nil
    var buyerCurrency: String? = nil
    var shippingUserId: Int? = nil
    var shippingAddressId: Int? = nil
    var billingAddressId: Int? = nil
    var status: String? = nil
    var shippedDate: Int? = nil
    var createDate: Int? = nil
    var updateDate: Int? = nil
}

public final class PaymentAccountLedgerEntry: Type {
    var entryId: Int? = nil
    var ledgerId: Int? = nil
    var sequenceNumber: Int? = nil
    var amount: Int? = nil
    var currency: String? = nil
    var description: String? = nil
    var balance: Int? = nil
    var createDate: Int? = nil
}

public final class PaymentAdjustment: Type {
    var paymentAdjustmentId: Int? = nil
    var paymentId: Int? = nil
    var status: String? = nil
    var isSuccess: Boolean? = nil
    var userId: Int? = nil
    var reasonCode: String? = nil
    var totalAdjustmentAmount: Int? = nil
    var shopTotalAdjustmentAmount: Int? = nil
    var buyerTotalAdjustmentAmount: Int? = nil
    var totalFeeAdjustmentAmount: Int? = nil
    var createDate: Int? = nil
    var updateDate: Int? = nil
}

public final class PaymentAdjustmentItem: Type {
    var paymentAdjustmentItemId: Int? = nil
    var paymentAdjustmentId: Int? = nil
    var adjustmentType: String? = nil
    var amount: Int? = nil
    var transactionId: Int? = nil
    var createDate: Int? = nil
}

public final class PaymentTemplate: Type {
    var paymentTemplateId: Int? = nil
    var allowBt: Boolean? = nil
    var allowCheck: Boolean? = nil
    var allowMo: Boolean? = nil
    var allowOther: Boolean? = nil
    var allowPaypal: Boolean? = nil
    var allowCc: Boolean? = nil
    var paypalEmail: String? = nil
    var name: String? = nil
    var firstLine: String? = nil
    var secondLine: String? = nil
    var city: String? = nil
    var state: String? = nil
    var zip: String? = nil
    var countryId: Int? = nil
    var userId: Int? = nil
    var listingPaymentId: Int? = nil
}

public final class PropertyValue: Type {
    var propertyId: Int? = nil
    var propertyName: String? = nil
    var scaleId: Int? = nil
    var scaleName: String? = nil
    var valueIds: [Int] = [Int]()
    var values: [String] = [String]()
}

public final class Receipt: Type {
    var receiptId: Int? = nil
    var receiptType: Int? = nil
    var orderId: Int? = nil
    var sellerUserId: Int? = nil
    var buyerUserId: Int? = nil
    var creationTsz: Float? = nil
    var lastModifiedTsz: Float? = nil
    var name: String? = nil
    var firstLine: String? = nil
    var secondLine: String? = nil
    var city: String? = nil
    var state: String? = nil
    var zip: String? = nil
    var formattedAddress: String? = nil
    var countryId: Int? = nil
    var paymentMethod: String? = nil
    var paymentEmail: String? = nil
    var messageFromSeller: String? = nil
    var messageFromBuyer: String? = nil
    var wasPaid: Boolean? = nil
    var totalTaxCost: Float? = nil
    var totalVatCost: Float? = nil
    var totalPrice: Float? = nil
    var totalShippingCost: Float? = nil
    var currencyCode: String? = nil
    var messageFromPayment: String? = nil
    var wasShipped: Boolean? = nil
    var buyerEmail: String? = nil
    var sellerEmail: String? = nil
    var isGift: Boolean? = nil
    var needsGiftWrap: Boolean? = nil
    var giftMessage: String? = nil
    var giftWrapPrice: Float? = nil
    var discountAmt: Float? = nil
    var subtotal: Float? = nil
    var grandtotal: Float? = nil
    var adjustedGrandtotal: Float? = nil
    var shipments: [ReceiptShipment] = [ReceiptShipment]()
}

public final class ReceiptShipment: Type {
    var carrierName: String? = nil
    var receiptShippingId: Int? = nil
    var trackingCode: String? = nil
    var trackingUrl: String? = nil
    var buyerNote: String? = nil
    var notificationDate: Int? = nil
}

public final class Region: Type {
    var regionId: Int? = nil
    var regionName: String? = nil
    var isDead: Boolean? = nil
}

public final class Segment: Type {
    var name: String? = nil
    var path: String? = nil
    var shortName: String? = nil
    var hasChildren: Boolean? = nil
    var imageUrl: String? = nil
    var shopId: Int? = nil
    var shopName: Int? = nil
    var listingId: Int? = nil
}

public final class SegmentPoster: Type {
    var name: String? = nil
    var path: String? = nil
    var imageUrl: String? = nil
    var shopId: Int? = nil
    var shopName: Int? = nil
    var weight: Int? = nil
    var listingId: Int? = nil
}

public final class ShippingInfo: Type {
    var shippingInfoId: Int? = nil
    var originCountryId: Int? = nil
    var destinationCountryId: Int? = nil
    var currencyCode: String? = nil
    var primaryCost: Float? = nil
    var secondaryCost: Float? = nil
    var listingId: Int? = nil
    var regionId: Int? = nil
    var originCountryName: String? = nil
    var destinationCountryName: String? = nil
}

public final class ShippingOption: Type {
    var optionId: String? = nil
    var name: String? = nil
    var optionType: Int? = nil
    var cost: String? = nil
    var currencyCode: String? = nil
}

public final class ShippingTemplate: Type {
    var shippingTemplateId: Int? = nil
    var title: String? = nil
    var userId: Int? = nil
    var minProcessingDays: Int? = nil
    var maxProcessingDays: Int? = nil
    var processingDaysDisplayLabel: String? = nil
    var originCountryId: Int? = nil
}

public final class ShippingTemplateEntry: Type {
    var shippingTemplateEntryId: Int? = nil
    var shippingTemplateId: Int? = nil
    var currencyCode: String? = nil
    var originCountryId: Int? = nil
    var destinationCountryId: Int? = nil
    var destinationRegionId: Int? = nil
    var primaryCost: Float? = nil
    var secondaryCost: Float? = nil
}

public final class ShippingUpgrade: Type {
    var shippingProfileId: Int? = nil
    var valueId: Int? = nil
    var value: String? = nil
    var price: Float? = nil
    var secondaryPrice: Float? = nil
    var currencyCode: String? = nil
    var type: Int? = nil
    var order: Int? = nil
    var language: Int? = nil
}

public final class Shop: Type {
    var shopId: Int? = nil
    var shopName: String? = nil
    var firstLine: String? = nil
    var secondLine: String? = nil
    var city: String? = nil
    var state: String? = nil
    var zip: String? = nil
    var countryId: Int? = nil
    var userId: Int? = nil
    var creationTsz: Float? = nil
    var title: String? = nil
    var announcement: String? = nil
    var currencyCode: String? = nil
    var isVacation: Boolean? = nil
    var vacationMessage: String? = nil
    var saleMessage: String? = nil
    var digitalSaleMessage: String? = nil
    var lastUpdatedTsz: Float? = nil
    var listingActiveCount: Int? = nil
    var digitalListingCount: Int? = nil
    var loginName: String? = nil
    var lat: Float? = nil
    var lon: Float? = nil
    var acceptsCustomRequests: Boolean? = nil
    var policyWelcome: String? = nil
    var policyPayment: String? = nil
    var policyShipping: String? = nil
    var policyRefunds: String? = nil
    var policyAdditional: String? = nil
    var policySellerInfo: String? = nil
    var policyUpdatedTsz: Float? = nil
    var policyHasPrivateReceiptInfo: Boolean? = nil
    var vacationAutoreply: String? = nil
    var gaCode: String? = nil
    var name: String? = nil
    var url: String? = nil
    var imageUrl760x100: String? = nil
    var numFavorers: Int? = nil
    var languages: [String] = [String]()
    var upcomingLocalEventId: Int? = nil
    var iconUrlFullxfull: String? = nil
    var isUsingStructuredPolicies: Boolean? = nil
    var hasOnboardedStructuredPolicies: Boolean? = nil
    var hasUnstructuredPolicies: Boolean? = nil
    var policyPrivacy: String? = nil
    var useNewInventoryEndpoints: Boolean? = nil
    var includeDisputeFormLink: Boolean? = nil
}

public final class ShopAbout: Type {
    var shopId: Int? = nil
    var status: String? = nil
    var storyHeadline: String? = nil
    var storyLeadingParagraph: String? = nil
    var story: String? = nil
    var relatedLinks: [String] = [String]()
    var url: String? = nil
}

public final class ShopAboutImage: Type {
    var shopId: Int? = nil
    var imageId: Int? = nil
    var caption: String? = nil
    var rank: Int? = nil
    var url178x178: String? = nil
    var url545xN: String? = nil
    var url760xN: String? = nil
    var urlFullxfull: String? = nil
}

public final class ShopAboutMember: Type {
    var shopAboutMemberId: Int? = nil
    var shopId: Int? = nil
    var name: String? = nil
    var role: String? = nil
    var bio: String? = nil
    var rank: Int? = nil
    var isOwner: Boolean? = nil
    var url90x90: String? = nil
    var url190x190: String? = nil
    var hasStaleTranslations: Boolean? = nil
}

public final class ShopSection: Type {
    var shopSectionId: Int? = nil
    var title: String? = nil
    var rank: Int? = nil
    var userId: Int? = nil
    var activeListingCount: Int? = nil
}

public final class ShopSectionTranslation: Type {
    var shopSectionId: Int? = nil
    var language: Language? = nil
    var title: String? = nil
}

public final class ShopTranslation: Type {
    var shopId: Int? = nil
    var language: Language? = nil
    var announcement: String? = nil
    var policyWelcome: String? = nil
    var policyPayment: String? = nil
    var policyShipping: String? = nil
    var policyRefunds: String? = nil
    var policyAdditional: String? = nil
    var policyPrivacy: String? = nil
    var policySellerInfo: String? = nil
    var saleMessage: String? = nil
    var digitalSaleMessage: String? = nil
    var title: String? = nil
    var vacationAutoreply: String? = nil
    var vacationMessage: String? = nil
}

public final class StructuredPolicies: Type {
    var structuredPoliciesId: Int? = nil
    var createDate: Int? = nil
    var updateDate: Int? = nil
    var createDateFormatted: String? = nil
    var updateDateFormatted: String? = nil
    var hasUnstructuredPolicies: Boolean? = nil
    var additionalTermsAndConditions: String? = nil
    var shopInGermany: Boolean? = nil
    var includeDisputeFormLink: Boolean? = nil
}

public final class Style: Type {
    var styleId: Int? = nil
    var style: String? = nil
}

public final class Taxonomy: Type {
    var id: Int? = nil
    var level: Int? = nil
    var name: String? = nil
    var parent: String? = nil
    var parentId: Int? = nil
    var path: String? = nil
    var categoryId: Int? = nil
    var children: [Taxonomy] = [Taxonomy]()
    var childrenIds: [Int] = [Int]()
    var fullPathTaxonomyIds: [Int] = [Int]()
}

public final class TaxonomyNodeProperty: Type {
    var propertyId: Int? = nil
    var name: String? = nil
    var displayName: String? = nil
    var scales: [TaxonomyPropertyScale] = [TaxonomyPropertyScale]()
    var isRequired: Boolean? = nil
    var supportsAttributes: Boolean? = nil
    var supportsVariations: Boolean? = nil
    var isMultivalued: Boolean? = nil
    var possibleValues: [TaxonomyPropertyValue] = [TaxonomyPropertyValue]()
    var selectedValues: [TaxonomyPropertyValue] = [TaxonomyPropertyValue]()
}

public final class TaxonomyPropertyScale: Type {
    var scaleId: Int? = nil
    var displayName: String? = nil
    var description: String? = nil
}

public final class TaxonomyPropertyValue: Type {
    var valueId: Int? = nil
    var name: String? = nil
    var scaleId: Int? = nil
    var order: Int? = nil
    var equalTo: [Int] = [Int]()
}

public final class Team: Type {
    var groupId: Int? = nil
    var name: String? = nil
    var createDate: Int? = nil
    var updateDate: Int? = nil
    var tags: [String] = [String]()
}

public final class Transaction: Type {
    var transactionId: Int? = nil
    var title: String? = nil
    var description: String? = nil
    var sellerUserId: Int? = nil
    var buyerUserId: Int? = nil
    var creationTsz: Float? = nil
    var paidTsz: Float? = nil
    var shippedTsz: Float? = nil
    var price: Float? = nil
    var currencyCode: String? = nil
    var quantity: Int? = nil
    var tags: [String] = [String]()
    var materials: [String] = [String]()
    var imageListingId: Int? = nil
    var receiptId: Int? = nil
    var shippingCost: Float? = nil
    var isDigital: Boolean? = nil
    var fileData: String? = nil
    var listingId: Int? = nil
    var isQuickSale: Boolean? = nil
    var sellerFeedbackId: Int? = nil
    var buyerFeedbackId: Int? = nil
    var transactionType: String? = nil
    var url: String? = nil
    var variations: [ListingInventory] = [ListingInventory]()
    var productData: ListingProduct? = nil
}

public final class Treasury: Type {
    var id: String? = nil
    var title: String? = nil
    var description: String? = nil
    var homepage: Int? = nil
    var mature: Boolean? = nil
    var `private`: Boolean? = nil
    var locale: String? = nil
    var commentCount: Int? = nil
    var tags: [String] = [String]()
    var counts: TreasuryCounts? = nil
    var hotness: Float? = nil
    var hotnessColor: String? = nil
    var userId: Int? = nil
    var userName: String? = nil
    var userAvatarId: Int? = nil
    var listings: [TreasuryListing] = [TreasuryListing]()
    var creationTsz: Float? = nil
    var becamePublicDate: Int? = nil
}

public final class TreasuryCounts: Type {
    var clicks: Int? = nil
    var views: Int? = nil
    var shares: Int? = nil
    var reports: Int? = nil
}

public final class TreasuryListing: Type {
    var data: TreasuryListingData? = nil
    var creationTsz: Float? = nil
}

public final class TreasuryListingData: Type {
    var userId: Int? = nil
    var title: String? = nil
    var price: Float? = nil
    var currencyCode: String? = nil
    var listingId: Int? = nil
    var state: String? = nil
    var shopName: String? = nil
    var imageId: Int? = nil
    var imageUrl75x75: String? = nil
    var imageUrl170x135: String? = nil
}

public final class User: Type {
    var userId: Int? = nil
    var loginName: String? = nil
    var primaryEmail: String? = nil
    var creationTsz: Float? = nil
    var userPubKey: StringJSON? = nil
    var referredByUserId: Int? = nil
    var feedbackInfo: FeedbackInfo? = nil
    var awaitingFeedbackCount: Int? = nil
    var useNewInventoryEndpoints: Boolean? = nil
}

public final class UserAddress: Type {
    var userAddressId: Int? = nil
    var userId: Int? = nil
    var name: Text? = nil
    var firstLine: Text? = nil
    var secondLine: Text? = nil
    var city: Text? = nil
    var state: Text? = nil
    var zip: Text? = nil
    var countryId: Int? = nil
    var countryName: String? = nil
    var isDefaultShipping: Boolean? = nil
}

public final class UserProfile: Type {
    var userProfileId: Int? = nil
    var userId: Int? = nil
    var loginName: String? = nil
    var bio: String? = nil
    var gender: String? = nil
    var birthMonth: String? = nil
    var birthDay: String? = nil
    var birthYear: String? = nil
    var joinTsz: Float? = nil
    var materials: String? = nil
    var countryId: Int? = nil
    var region: String? = nil
    var city: String? = nil
    var location: String? = nil
    var avatarId: Int? = nil
    var lat: Float? = nil
    var lon: Float? = nil
    var transactionBuyCount: Int? = nil
    var transactionSoldCount: Int? = nil
    var isSeller: Boolean? = nil
    var imageUrl75x75: String? = nil
    var firstName: String? = nil
    var lastName: String? = nil
}


