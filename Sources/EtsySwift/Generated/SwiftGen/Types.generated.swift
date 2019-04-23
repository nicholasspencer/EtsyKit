// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen
// DO NOT EDIT

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

public protocol Type: Codable, Hashable {}

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length
public struct ApiMethod: Type {
    let name: String?
    let uri: String?
    let params: ParamList?
    let defaults: ParamList?
    let type: String?
    let visibility: String?
    let httpMethod: String?
}

public struct Avatar: Type {
    let avatarId: Int?
    let hexCode: String?
    let red: Int?
    let green: Int?
    let blue: Int?
    let hue: Int?
    let saturation: Int?
    let brightness: Int?
    let isBlackAndWhite: Boolean?
    let creationTsz: Float?
    let userId: Int?
}

public struct BillCharge: Type {
    let billChargeId: Int?
    let creationTsz: Float?
    let type: String?
    let typeId: Int?
    let userId: Int?
    let amount: Float?
    let currencyCode: String?
    let creationYear: Int?
    let creationMonth: Int?
    let lastModifiedTsz: Float?
}

public struct BillPayment: Type {
    let billPaymentId: Int?
    let creationTsz: Float?
    let type: String?
    let typeId: Int?
    let userId: Int?
    let amount: Float?
    let currencyCode: String?
    let creationMonth: Int?
    let creationYear: Int?
}

public struct BillingOverview: Type {
    let isOverdue: Boolean?
    let currencyCode: String?
    let overdueBalance: Float?
    let balanceDue: Float?
    let totalBalance: Float?
    let dateDue: Epoch?
    let dateOverdue: Epoch?
}

public struct Cart: Type {
    let cartId: Int?
    let shopName: String?
    let messageToSeller: String?
    let destinationCountryId: Int?
    let couponCode: String?
    let currencyCode: String?
    let total: String?
    let subtotal: String?
    let shippingCost: String?
    let taxCost: String?
    let discountAmount: String?
    let shippingDiscountAmount: String?
    let taxDiscountAmount: String?
    let url: String?
    let listings: CartListing?
    let isDownloadOnly: Boolean?
    let hasVat: Boolean?
    let shippingOption: ShippingOption?
}

public struct CartListing: Type {
    let listingId: Int?
    let purchaseQuantity: Int?
    let purchaseState: String?
    let isDigital: Boolean?
    let fileData: String?
    let listingCustomizationId: Int?
    let variationsAvailable: Boolean?
    let hasVariations: Boolean?
    let selectedVariations: VariationsSelectedProperty?
}

public struct Category: Type {
    let categoryId: Int?
    let name: String?
    let metaTitle: String?
    let metaKeywords: String?
    let metaDescription: String?
    let pageDescription: String?
    let pageTitle: String?
    let categoryName: String?
    let shortName: String?
    let longName: String?
    let numChildren: Int?
}

public struct Country: Type {
    let countryId: Int?
    let isoCountryCode: String?
    let worldBankCountryCode: String?
    let name: String?
    let slug: String?
    let lat: Float?
    let lon: Float?
}

public struct Coupon: Type {
    let couponId: Int?
    let couponCode: String?
    let sellerActive: Boolean?
    let pctDiscount: Int?
    let freeShipping: Boolean?
    let domesticOnly: Boolean?
    let currencyCode: String?
    let fixedDiscount: String?
    let minimumPurchasePrice: String?
    let expirationDate: Int?
    let couponType: String?
}

public struct DataType: Type {
    let type: String?
    let values: String?
}

public struct FavoriteListing: Type {
    let listingId: Int?
    let userId: Int?
    let listingState: String?
    let createDate: Int?
}

public struct FavoriteUser: Type {
    let userId: Int?
    let favoriteUserId: Int?
    let targetUserId: Int?
    let creationTsz: Float?
}

public struct FeaturedTreasury: Type {
    let treasuryKey: String?
    let treasuryId: Int?
    let treasuryOwnerId: Int?
    let url: String?
    let region: String?
    let activeDate: Float?
}

public struct Feedback: Type {
    let feedbackId: Int?
    let transactionId: Int?
    let creatorUserId: Int?
    let targetUserId: Int?
    let sellerUserId: Int?
    let buyerUserId: Int?
    let creationTsz: Float?
    let message: String?
    let value: Int?
    let imageFeedbackId: Int?
    let imageUrl25x25: String?
    let imageUrl155x125: String?
    let imageUrlFullxfull: String?
}

public struct FeedbackInfo: Type {
    let count: Int?
    let score: Int?
}

public struct ForumPost: Type {
    let threadId: Int?
    let postId: Int?
    let post: String?
    let userId: String?
    let lastEditTime: Int?
    let createDate: Int?
}

public struct Guest: Type {
    let guestId: GuestId?
    let checkoutUrl: String?
}

public struct GuestCart: Type {
    let cartId: Int?
    let shopName: String?
    let messageToSeller: String?
    let destinationCountryId: Int?
    let couponCode: String?
    let currencyCode: String?
    let total: String?
    let subtotal: String?
    let shippingCost: String?
    let taxCost: String?
    let discountAmount: String?
    let shippingDiscountAmount: String?
    let taxDiscountAmount: String?
    let url: String?
    let listings: CartListing?
    let isDownloadOnly: Boolean?
    let hasVat: Boolean?
    let shippingOption: ShippingOption?
}

public struct ImageType: Type {
    let code: String?
    let desc: String?
    let sizes: String?
}

public struct Ledger: Type {
    let ledgerId: Int?
    let shopId: String?
    let currency: String?
    let createDate: Int?
    let updateDate: Int?
}

public struct LedgerEntry: Type {
    let ledgerEntryId: Int?
    let ledgerId: Int?
    let sequence: Int?
    let creditAmount: Int?
    let debitAmount: Int?
    let entryType: String?
    let referenceId: Int?
    let runningBalance: Int?
    let createDate: Int?
}

public struct Listing: Type {
    let listingId: Int?
    let state: String?
    let userId: Int?
    let categoryId: Int?
    let title: String?
    let description: String?
    let creationTsz: Float?
    let endingTsz: Float?
    let originalCreationTsz: Float?
    let lastModifiedTsz: Float?
    let price: String?
    let currencyCode: String?
    let quantity: Int?
    let sku: String?
    let tags: String?
    let categoryPath: String?
    let categoryPathIds: Int?
    let taxonomyId: Int?
    let suggestedTaxonomyId: Int?
    let taxonomyPath: String?
    let materials: String?
    let shopSectionId: Int?
    let featuredRank: FeaturedRank?
    let stateTsz: Float?
    let url: String?
    let views: Int?
    let numFavorers: Int?
    let shippingTemplateId: Int?
    let shippingProfileId: Int?
    let processingMin: Int?
    let processingMax: Int?
    let whoMade: Enum?
    let isSupply: Boolean?
    let whenMade: Enum?
    let itemWeight: Int?
    let itemWeightUnit: Enum?
    let itemLength: Int?
    let itemWidth: Int?
    let itemHeight: Int?
    let itemDimensionsUnit: Enum?
    let isPrivate: Boolean?
    let recipient: Enum?
    let occasion: Enum?
    let style: String?
    let nonTaxable: Boolean?
    let isCustomizable: Boolean?
    let isDigital: Boolean?
    let fileData: String?
    let canWriteInventory: Boolean?
    let hasVariations: Boolean?
    let shouldAutoRenew: Boolean?
    let language: Language?
}

public struct ListingFile: Type {
    let listingFileId: Int?
    let listingId: Int?
    let rank: Int?
    let filename: String?
    let filesize: String?
    let sizeBytes: Int?
    let filetype: String?
    let createDate: Int?
}

public struct ListingImage: Type {
    let listingImageId: Int?
    let hexCode: String?
    let red: Int?
    let green: Int?
    let blue: Int?
    let hue: Int?
    let saturation: Int?
    let brightness: Int?
    let isBlackAndWhite: Boolean?
    let creationTsz: Float?
    let listingId: Int?
    let rank: Int?
    let url75x75: String?
    let url170x135: String?
    let url570xN: String?
    let urlFullxfull: String?
    let fullHeight: Int?
    let fullWidth: Int?
}

public struct ListingInventory: Type {
    let products: ListingProduct?
    let priceOnProperty: Int?
    let quantityOnProperty: Int?
    let skuOnProperty: Int?
}

public struct ListingOffering: Type {
    let offeringId: Int?
    let price: Money?
    let quantity: Int?
    let isEnabled: Boolean?
    let isDeleted: Boolean?
}

public struct ListingProduct: Type {
    let productId: Int?
    let propertyValues: PropertyValue?
    let sku: String?
    let offerings: ListingOffering?
    let isDeleted: Boolean?
}

public struct ListingTranslation: Type {
    let listingId: Int?
    let language: Language?
    let title: String?
    let description: String?
    let tags: String?
}

public struct Money: Type {
    let amount: Int?
    let divisor: Int?
    let currencyCode: String?
    let formattedRaw: String?
    let formattedShort: String?
    let formattedLong: String?
    let originalCurrencyCode: String?
    let beforeConversion: Money?
}

public struct ParamList: Type {
    let paramName: String?
}

public struct Payment: Type {
    let paymentId: Int?
    let buyerUserId: Int?
    let shopId: Int?
    let receiptId: Int?
    let amountGross: Int?
    let amountFees: Int?
    let amountNet: Int?
    let postedGross: Int?
    let postedFees: Int?
    let postedNet: Int?
    let adjustedGross: Int?
    let adjustedFees: Int?
    let adjustedNet: Int?
    let currency: String?
    let shopCurrency: String?
    let buyerCurrency: String?
    let shippingUserId: Int?
    let shippingAddressId: Int?
    let billingAddressId: Int?
    let status: String?
    let shippedDate: Int?
    let createDate: Int?
    let updateDate: Int?
}

public struct PaymentAccountLedgerEntry: Type {
    let entryId: Int?
    let ledgerId: Int?
    let sequenceNumber: Int?
    let amount: Int?
    let currency: String?
    let description: String?
    let balance: Int?
    let createDate: Int?
}

public struct PaymentAdjustment: Type {
    let paymentAdjustmentId: Int?
    let paymentId: Int?
    let status: String?
    let isSuccess: Boolean?
    let userId: Int?
    let reasonCode: String?
    let totalAdjustmentAmount: Int?
    let shopTotalAdjustmentAmount: Int?
    let buyerTotalAdjustmentAmount: Int?
    let totalFeeAdjustmentAmount: Int?
    let createDate: Int?
    let updateDate: Int?
}

public struct PaymentAdjustmentItem: Type {
    let paymentAdjustmentItemId: Int?
    let paymentAdjustmentId: Int?
    let adjustmentType: String?
    let amount: Int?
    let transactionId: Int?
    let createDate: Int?
}

public struct PaymentTemplate: Type {
    let paymentTemplateId: Int?
    let allowBt: Boolean?
    let allowCheck: Boolean?
    let allowMo: Boolean?
    let allowOther: Boolean?
    let allowPaypal: Boolean?
    let allowCc: Boolean?
    let paypalEmail: String?
    let name: String?
    let firstLine: String?
    let secondLine: String?
    let city: String?
    let state: String?
    let zip: String?
    let countryId: Int?
    let userId: Int?
    let listingPaymentId: Int?
}

public struct PropertyValue: Type {
    let propertyId: Int?
    let propertyName: String?
    let scaleId: Int?
    let scaleName: String?
    let valueIds: Int?
    let values: String?
}

public struct Receipt: Type {
    let receiptId: Int?
    let receiptType: Int?
    let orderId: Int?
    let sellerUserId: Int?
    let buyerUserId: Int?
    let creationTsz: Float?
    let lastModifiedTsz: Float?
    let name: String?
    let firstLine: String?
    let secondLine: String?
    let city: String?
    let state: String?
    let zip: String?
    let formattedAddress: String?
    let countryId: Int?
    let paymentMethod: String?
    let paymentEmail: String?
    let messageFromSeller: String?
    let messageFromBuyer: String?
    let wasPaid: Boolean?
    let totalTaxCost: Float?
    let totalVatCost: Float?
    let totalPrice: Float?
    let totalShippingCost: Float?
    let currencyCode: String?
    let messageFromPayment: String?
    let wasShipped: Boolean?
    let buyerEmail: String?
    let sellerEmail: String?
    let isGift: Boolean?
    let needsGiftWrap: Boolean?
    let giftMessage: String?
    let giftWrapPrice: Float?
    let discountAmt: Float?
    let subtotal: Float?
    let grandtotal: Float?
    let adjustedGrandtotal: Float?
    let shipments: ReceiptShipment?
}

public struct ReceiptShipment: Type {
    let carrierName: String?
    let receiptShippingId: Int?
    let trackingCode: String?
    let trackingUrl: String?
    let buyerNote: String?
    let notificationDate: Int?
}

public struct Region: Type {
    let regionId: Int?
    let regionName: String?
    let isDead: Boolean?
}

public struct Segment: Type {
    let name: String?
    let path: String?
    let shortName: String?
    let hasChildren: Boolean?
    let imageUrl: String?
    let shopId: Int?
    let shopName: Int?
    let listingId: Int?
}

public struct SegmentPoster: Type {
    let name: String?
    let path: String?
    let imageUrl: String?
    let shopId: Int?
    let shopName: Int?
    let weight: Int?
    let listingId: Int?
}

public struct ShippingInfo: Type {
    let shippingInfoId: Int?
    let originCountryId: Int?
    let destinationCountryId: Int?
    let currencyCode: String?
    let primaryCost: Float?
    let secondaryCost: Float?
    let listingId: Int?
    let regionId: Int?
    let originCountryName: String?
    let destinationCountryName: String?
}

public struct ShippingOption: Type {
    let optionId: String?
    let name: String?
    let optionType: Int?
    let cost: String?
    let currencyCode: String?
}

public struct ShippingTemplate: Type {
    let shippingTemplateId: Int?
    let title: String?
    let userId: Int?
    let minProcessingDays: Int?
    let maxProcessingDays: Int?
    let processingDaysDisplayLabel: String?
    let originCountryId: Int?
}

public struct ShippingTemplateEntry: Type {
    let shippingTemplateEntryId: Int?
    let shippingTemplateId: Int?
    let currencyCode: String?
    let originCountryId: Int?
    let destinationCountryId: Int?
    let destinationRegionId: Int?
    let primaryCost: Float?
    let secondaryCost: Float?
}

public struct ShippingUpgrade: Type {
    let shippingProfileId: Int?
    let valueId: Int?
    let value: String?
    let price: Float?
    let secondaryPrice: Float?
    let currencyCode: String?
    let type: Int?
    let order: Int?
    let language: Int?
}

public struct Shop: Type {
    let shopId: Int?
    let shopName: String?
    let firstLine: String?
    let secondLine: String?
    let city: String?
    let state: String?
    let zip: String?
    let countryId: Int?
    let userId: Int?
    let creationTsz: Float?
    let title: String?
    let announcement: String?
    let currencyCode: String?
    let isVacation: Boolean?
    let vacationMessage: String?
    let saleMessage: String?
    let digitalSaleMessage: String?
    let lastUpdatedTsz: Float?
    let listingActiveCount: Int?
    let digitalListingCount: Int?
    let loginName: String?
    let lat: Float?
    let lon: Float?
    let acceptsCustomRequests: Boolean?
    let policyWelcome: String?
    let policyPayment: String?
    let policyShipping: String?
    let policyRefunds: String?
    let policyAdditional: String?
    let policySellerInfo: String?
    let policyUpdatedTsz: Float?
    let policyHasPrivateReceiptInfo: Boolean?
    let vacationAutoreply: String?
    let gaCode: String?
    let name: String?
    let url: String?
    let imageUrl760x100: String?
    let numFavorers: Int?
    let languages: String?
    let upcomingLocalEventId: Int?
    let iconUrlFullxfull: String?
    let isUsingStructuredPolicies: Boolean?
    let hasOnboardedStructuredPolicies: Boolean?
    let hasUnstructuredPolicies: Boolean?
    let policyPrivacy: String?
    let useNewInventoryEndpoints: Boolean?
    let includeDisputeFormLink: Boolean?
}

public struct ShopAbout: Type {
    let shopId: Int?
    let status: String?
    let storyHeadline: String?
    let storyLeadingParagraph: String?
    let story: String?
    let relatedLinks: String?
    let url: String?
}

public struct ShopAboutImage: Type {
    let shopId: Int?
    let imageId: Int?
    let caption: String?
    let rank: Int?
    let url178x178: String?
    let url545xN: String?
    let url760xN: String?
    let urlFullxfull: String?
}

public struct ShopAboutMember: Type {
    let shopAboutMemberId: Int?
    let shopId: Int?
    let name: String?
    let role: String?
    let bio: String?
    let rank: Int?
    let isOwner: Boolean?
    let url90x90: String?
    let url190x190: String?
    let hasStaleTranslations: Boolean?
}

public struct ShopSection: Type {
    let shopSectionId: Int?
    let title: String?
    let rank: Int?
    let userId: Int?
    let activeListingCount: Int?
}

public struct ShopSectionTranslation: Type {
    let shopSectionId: Int?
    let language: Language?
    let title: String?
}

public struct ShopTranslation: Type {
    let shopId: Int?
    let language: Language?
    let announcement: String?
    let policyWelcome: String?
    let policyPayment: String?
    let policyShipping: String?
    let policyRefunds: String?
    let policyAdditional: String?
    let policyPrivacy: String?
    let policySellerInfo: String?
    let saleMessage: String?
    let digitalSaleMessage: String?
    let title: String?
    let vacationAutoreply: String?
    let vacationMessage: String?
}

public struct StructuredPolicies: Type {
    let structuredPoliciesId: Int?
    let createDate: Int?
    let updateDate: Int?
    let createDateFormatted: String?
    let updateDateFormatted: String?
    let hasUnstructuredPolicies: Boolean?
    let additionalTermsAndConditions: String?
    let shopInGermany: Boolean?
    let includeDisputeFormLink: Boolean?
}

public struct Style: Type {
    let styleId: Int?
    let style: String?
}

public struct Taxonomy: Type {
    let id: Int?
    let level: Int?
    let name: String?
    let parent: String?
    let parentId: Int?
    let path: String?
    let categoryId: Int?
    let children: Taxonomy?
    let childrenIds: Int?
    let fullPathTaxonomyIds: Int?
}

public struct TaxonomyNodeProperty: Type {
    let propertyId: Int?
    let name: String?
    let displayName: String?
    let scales: TaxonomyPropertyScale?
    let isRequired: Boolean?
    let supportsAttributes: Boolean?
    let supportsVariations: Boolean?
    let isMultivalued: Boolean?
    let possibleValues: TaxonomyPropertyValue?
    let selectedValues: TaxonomyPropertyValue?
}

public struct TaxonomyPropertyScale: Type {
    let scaleId: Int?
    let displayName: String?
    let description: String?
}

public struct TaxonomyPropertyValue: Type {
    let valueId: Int?
    let name: String?
    let scaleId: Int?
    let order: Int?
    let equalTo: Int?
}

public struct Team: Type {
    let groupId: Int?
    let name: String?
    let createDate: Int?
    let updateDate: Int?
    let tags: String?
}

public struct Transaction: Type {
    let transactionId: Int?
    let title: String?
    let description: String?
    let sellerUserId: Int?
    let buyerUserId: Int?
    let creationTsz: Float?
    let paidTsz: Float?
    let shippedTsz: Float?
    let price: Float?
    let currencyCode: String?
    let quantity: Int?
    let tags: String?
    let materials: String?
    let imageListingId: Int?
    let receiptId: Int?
    let shippingCost: Float?
    let isDigital: Boolean?
    let fileData: String?
    let listingId: Int?
    let isQuickSale: Boolean?
    let sellerFeedbackId: Int?
    let buyerFeedbackId: Int?
    let transactionType: String?
    let url: String?
    let variations: ListingInventory?
    let productData: ListingProduct?
}

public struct Treasury: Type {
    let id: String?
    let title: String?
    let description: String?
    let homepage: Int?
    let mature: Boolean?
    let private: Boolean?
    let locale: String?
    let commentCount: Int?
    let tags: String?
    let counts: TreasuryCounts?
    let hotness: Float?
    let hotnessColor: String?
    let userId: Int?
    let userName: String?
    let userAvatarId: Int?
    let listings: TreasuryListing?
    let creationTsz: Float?
    let becamePublicDate: Int?
}

public struct TreasuryCounts: Type {
    let clicks: Int?
    let views: Int?
    let shares: Int?
    let reports: Int?
}

public struct TreasuryListing: Type {
    let data: TreasuryListingData?
    let creationTsz: Float?
}

public struct TreasuryListingData: Type {
    let userId: Int?
    let title: String?
    let price: Float?
    let currencyCode: String?
    let listingId: Int?
    let state: String?
    let shopName: String?
    let imageId: Int?
    let imageUrl75x75: String?
    let imageUrl170x135: String?
}

public struct User: Type {
    let userId: Int?
    let loginName: String?
    let primaryEmail: String?
    let creationTsz: Float?
    let userPubKey: StringJSON?
    let referredByUserId: Int?
    let feedbackInfo: FeedbackInfo?
    let awaitingFeedbackCount: Int?
    let useNewInventoryEndpoints: Boolean?
}

public struct UserAddress: Type {
    let userAddressId: Int?
    let userId: Int?
    let name: Text?
    let firstLine: Text?
    let secondLine: Text?
    let city: Text?
    let state: Text?
    let zip: Text?
    let countryId: Int?
    let countryName: String?
    let isDefaultShipping: Boolean?
}

public struct UserProfile: Type {
    let userProfileId: Int?
    let userId: Int?
    let loginName: String?
    let bio: String?
    let gender: String?
    let birthMonth: String?
    let birthDay: String?
    let birthYear: String?
    let joinTsz: Float?
    let materials: String?
    let countryId: Int?
    let region: String?
    let city: String?
    let location: String?
    let avatarId: Int?
    let lat: Float?
    let lon: Float?
    let transactionBuyCount: Int?
    let transactionSoldCount: Int?
    let isSeller: Boolean?
    let imageUrl75x75: String?
    let firstName: String?
    let lastName: String?
}


