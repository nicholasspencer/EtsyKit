// Generated using Sourcery 0.16.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

// swiftlint:disable file_length
public extension ApiMethod {
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case uri = "uri"
        case params = "params"
        case defaults = "defaults"
        case type = "type"
        case visibility = "visibility"
        case httpMethod = "http_method"
    }
}

public extension Avatar {
    enum CodingKeys: String, CodingKey {
        case avatarId = "avatar_id"
        case hexCode = "hex_code"
        case red = "red"
        case green = "green"
        case blue = "blue"
        case hue = "hue"
        case saturation = "saturation"
        case brightness = "brightness"
        case isBlackAndWhite = "is_black_and_white"
        case creationTsz = "creation_tsz"
        case userId = "user_id"
    }
}

public extension BillCharge {
    enum CodingKeys: String, CodingKey {
        case billChargeId = "bill_charge_id"
        case creationTsz = "creation_tsz"
        case type = "type"
        case typeId = "type_id"
        case userId = "user_id"
        case amount = "amount"
        case currencyCode = "currency_code"
        case creationYear = "creation_year"
        case creationMonth = "creation_month"
        case lastModifiedTsz = "last_modified_tsz"
    }
}

public extension BillPayment {
    enum CodingKeys: String, CodingKey {
        case billPaymentId = "bill_payment_id"
        case creationTsz = "creation_tsz"
        case type = "type"
        case typeId = "type_id"
        case userId = "user_id"
        case amount = "amount"
        case currencyCode = "currency_code"
        case creationMonth = "creation_month"
        case creationYear = "creation_year"
    }
}

public extension BillingOverview {
    enum CodingKeys: String, CodingKey {
        case isOverdue = "is_overdue"
        case currencyCode = "currency_code"
        case overdueBalance = "overdue_balance"
        case balanceDue = "balance_due"
        case totalBalance = "total_balance"
        case dateDue = "date_due"
        case dateOverdue = "date_overdue"
    }
}

public extension Cart {
    enum CodingKeys: String, CodingKey {
        case cartId = "cart_id"
        case shopName = "shop_name"
        case messageToSeller = "message_to_seller"
        case destinationCountryId = "destination_country_id"
        case couponCode = "coupon_code"
        case currencyCode = "currency_code"
        case total = "total"
        case subtotal = "subtotal"
        case shippingCost = "shipping_cost"
        case taxCost = "tax_cost"
        case discountAmount = "discount_amount"
        case shippingDiscountAmount = "shipping_discount_amount"
        case taxDiscountAmount = "tax_discount_amount"
        case url = "url"
        case listings = "listings"
        case isDownloadOnly = "is_download_only"
        case hasVat = "has_vat"
        case shippingOption = "shipping_option"
    }
}

public extension CartListing {
    enum CodingKeys: String, CodingKey {
        case listingId = "listing_id"
        case purchaseQuantity = "purchase_quantity"
        case purchaseState = "purchase_state"
        case isDigital = "is_digital"
        case fileData = "file_data"
        case listingCustomizationId = "listing_customization_id"
        case variationsAvailable = "variations_available"
        case hasVariations = "has_variations"
        case selectedVariations = "selected_variations"
    }
}

public extension Category {
    enum CodingKeys: String, CodingKey {
        case categoryId = "category_id"
        case name = "name"
        case metaTitle = "meta_title"
        case metaKeywords = "meta_keywords"
        case metaDescription = "meta_description"
        case pageDescription = "page_description"
        case pageTitle = "page_title"
        case categoryName = "category_name"
        case shortName = "short_name"
        case longName = "long_name"
        case numChildren = "num_children"
    }
}

public extension Country {
    enum CodingKeys: String, CodingKey {
        case countryId = "country_id"
        case isoCountryCode = "iso_country_code"
        case worldBankCountryCode = "world_bank_country_code"
        case name = "name"
        case slug = "slug"
        case lat = "lat"
        case lon = "lon"
    }
}

public extension Coupon {
    enum CodingKeys: String, CodingKey {
        case couponId = "coupon_id"
        case couponCode = "coupon_code"
        case sellerActive = "seller_active"
        case pctDiscount = "pct_discount"
        case freeShipping = "free_shipping"
        case domesticOnly = "domestic_only"
        case currencyCode = "currency_code"
        case fixedDiscount = "fixed_discount"
        case minimumPurchasePrice = "minimum_purchase_price"
        case expirationDate = "expiration_date"
        case couponType = "coupon_type"
    }
}

public extension DataType {
    enum CodingKeys: String, CodingKey {
        case type = "type"
        case values = "values"
    }
}

public extension FavoriteListing {
    enum CodingKeys: String, CodingKey {
        case listingId = "listing_id"
        case userId = "user_id"
        case listingState = "listing_state"
        case createDate = "create_date"
    }
}

public extension FavoriteUser {
    enum CodingKeys: String, CodingKey {
        case userId = "user_id"
        case favoriteUserId = "favorite_user_id"
        case targetUserId = "target_user_id"
        case creationTsz = "creation_tsz"
    }
}

public extension FeaturedTreasury {
    enum CodingKeys: String, CodingKey {
        case treasuryKey = "treasury_key"
        case treasuryId = "treasury_id"
        case treasuryOwnerId = "treasury_owner_id"
        case url = "url"
        case region = "region"
        case activeDate = "active_date"
    }
}

public extension Feedback {
    enum CodingKeys: String, CodingKey {
        case feedbackId = "feedback_id"
        case transactionId = "transaction_id"
        case creatorUserId = "creator_user_id"
        case targetUserId = "target_user_id"
        case sellerUserId = "seller_user_id"
        case buyerUserId = "buyer_user_id"
        case creationTsz = "creation_tsz"
        case message = "message"
        case value = "value"
        case imageFeedbackId = "image_feedback_id"
        case imageUrl25x25 = "image_url25x25"
        case imageUrl155x125 = "image_url155x125"
        case imageUrlFullxfull = "image_url_fullxfull"
    }
}

public extension FeedbackInfo {
    enum CodingKeys: String, CodingKey {
        case count = "count"
        case score = "score"
    }
}

public extension ForumPost {
    enum CodingKeys: String, CodingKey {
        case threadId = "thread_id"
        case postId = "post_id"
        case post = "post"
        case userId = "user_id"
        case lastEditTime = "last_edit_time"
        case createDate = "create_date"
    }
}

public extension Guest {
    enum CodingKeys: String, CodingKey {
        case guestId = "guest_id"
        case checkoutUrl = "checkout_url"
    }
}

public extension GuestCart {
    enum CodingKeys: String, CodingKey {
        case cartId = "cart_id"
        case shopName = "shop_name"
        case messageToSeller = "message_to_seller"
        case destinationCountryId = "destination_country_id"
        case couponCode = "coupon_code"
        case currencyCode = "currency_code"
        case total = "total"
        case subtotal = "subtotal"
        case shippingCost = "shipping_cost"
        case taxCost = "tax_cost"
        case discountAmount = "discount_amount"
        case shippingDiscountAmount = "shipping_discount_amount"
        case taxDiscountAmount = "tax_discount_amount"
        case url = "url"
        case listings = "listings"
        case isDownloadOnly = "is_download_only"
        case hasVat = "has_vat"
        case shippingOption = "shipping_option"
    }
}

public extension ImageType {
    enum CodingKeys: String, CodingKey {
        case code = "code"
        case desc = "desc"
        case sizes = "sizes"
    }
}

public extension Ledger {
    enum CodingKeys: String, CodingKey {
        case ledgerId = "ledger_id"
        case shopId = "shop_id"
        case currency = "currency"
        case createDate = "create_date"
        case updateDate = "update_date"
    }
}

public extension LedgerEntry {
    enum CodingKeys: String, CodingKey {
        case ledgerEntryId = "ledger_entry_id"
        case ledgerId = "ledger_id"
        case sequence = "sequence"
        case creditAmount = "credit_amount"
        case debitAmount = "debit_amount"
        case entryType = "entry_type"
        case referenceId = "reference_id"
        case runningBalance = "running_balance"
        case createDate = "create_date"
    }
}

public extension Listing {
    enum CodingKeys: String, CodingKey {
        case listingId = "listing_id"
        case state = "state"
        case userId = "user_id"
        case categoryId = "category_id"
        case title = "title"
        case description = "description"
        case creationTsz = "creation_tsz"
        case endingTsz = "ending_tsz"
        case originalCreationTsz = "original_creation_tsz"
        case lastModifiedTsz = "last_modified_tsz"
        case price = "price"
        case currencyCode = "currency_code"
        case quantity = "quantity"
        case sku = "sku"
        case tags = "tags"
        case categoryPath = "category_path"
        case categoryPathIds = "category_path_ids"
        case taxonomyId = "taxonomy_id"
        case suggestedTaxonomyId = "suggested_taxonomy_id"
        case taxonomyPath = "taxonomy_path"
        case materials = "materials"
        case shopSectionId = "shop_section_id"
        case featuredRank = "featured_rank"
        case stateTsz = "state_tsz"
        case url = "url"
        case views = "views"
        case numFavorers = "num_favorers"
        case shippingTemplateId = "shipping_template_id"
        case shippingProfileId = "shipping_profile_id"
        case processingMin = "processing_min"
        case processingMax = "processing_max"
        case whoMade = "who_made"
        case isSupply = "is_supply"
        case whenMade = "when_made"
        case itemWeight = "item_weight"
        case itemWeightUnit = "item_weight_unit"
        case itemLength = "item_length"
        case itemWidth = "item_width"
        case itemHeight = "item_height"
        case itemDimensionsUnit = "item_dimensions_unit"
        case isPrivate = "is_private"
        case recipient = "recipient"
        case occasion = "occasion"
        case style = "style"
        case nonTaxable = "non_taxable"
        case isCustomizable = "is_customizable"
        case isDigital = "is_digital"
        case fileData = "file_data"
        case canWriteInventory = "can_write_inventory"
        case hasVariations = "has_variations"
        case shouldAutoRenew = "should_auto_renew"
        case language = "language"
    }
}

public extension ListingFile {
    enum CodingKeys: String, CodingKey {
        case listingFileId = "listing_file_id"
        case listingId = "listing_id"
        case rank = "rank"
        case filename = "filename"
        case filesize = "filesize"
        case sizeBytes = "size_bytes"
        case filetype = "filetype"
        case createDate = "create_date"
    }
}

public extension ListingImage {
    enum CodingKeys: String, CodingKey {
        case listingImageId = "listing_image_id"
        case hexCode = "hex_code"
        case red = "red"
        case green = "green"
        case blue = "blue"
        case hue = "hue"
        case saturation = "saturation"
        case brightness = "brightness"
        case isBlackAndWhite = "is_black_and_white"
        case creationTsz = "creation_tsz"
        case listingId = "listing_id"
        case rank = "rank"
        case url75x75 = "url75x75"
        case url170x135 = "url170x135"
        case url570xN = "url570x_n"
        case urlFullxfull = "url_fullxfull"
        case fullHeight = "full_height"
        case fullWidth = "full_width"
    }
}

public extension ListingInventory {
    enum CodingKeys: String, CodingKey {
        case products = "products"
        case priceOnProperty = "price_on_property"
        case quantityOnProperty = "quantity_on_property"
        case skuOnProperty = "sku_on_property"
    }
}

public extension ListingOffering {
    enum CodingKeys: String, CodingKey {
        case offeringId = "offering_id"
        case price = "price"
        case quantity = "quantity"
        case isEnabled = "is_enabled"
        case isDeleted = "is_deleted"
    }
}

public extension ListingProduct {
    enum CodingKeys: String, CodingKey {
        case productId = "product_id"
        case propertyValues = "property_values"
        case sku = "sku"
        case offerings = "offerings"
        case isDeleted = "is_deleted"
    }
}

public extension ListingTranslation {
    enum CodingKeys: String, CodingKey {
        case listingId = "listing_id"
        case language = "language"
        case title = "title"
        case description = "description"
        case tags = "tags"
    }
}

public extension Money {
    enum CodingKeys: String, CodingKey {
        case amount = "amount"
        case divisor = "divisor"
        case currencyCode = "currency_code"
        case formattedRaw = "formatted_raw"
        case formattedShort = "formatted_short"
        case formattedLong = "formatted_long"
        case originalCurrencyCode = "original_currency_code"
        case beforeConversion = "before_conversion"
    }
}

public extension ParamList {
    enum CodingKeys: String, CodingKey {
        case paramName = "param_name"
    }
}

public extension Payment {
    enum CodingKeys: String, CodingKey {
        case paymentId = "payment_id"
        case buyerUserId = "buyer_user_id"
        case shopId = "shop_id"
        case receiptId = "receipt_id"
        case amountGross = "amount_gross"
        case amountFees = "amount_fees"
        case amountNet = "amount_net"
        case postedGross = "posted_gross"
        case postedFees = "posted_fees"
        case postedNet = "posted_net"
        case adjustedGross = "adjusted_gross"
        case adjustedFees = "adjusted_fees"
        case adjustedNet = "adjusted_net"
        case currency = "currency"
        case shopCurrency = "shop_currency"
        case buyerCurrency = "buyer_currency"
        case shippingUserId = "shipping_user_id"
        case shippingAddressId = "shipping_address_id"
        case billingAddressId = "billing_address_id"
        case status = "status"
        case shippedDate = "shipped_date"
        case createDate = "create_date"
        case updateDate = "update_date"
    }
}

public extension PaymentAccountLedgerEntry {
    enum CodingKeys: String, CodingKey {
        case entryId = "entry_id"
        case ledgerId = "ledger_id"
        case sequenceNumber = "sequence_number"
        case amount = "amount"
        case currency = "currency"
        case description = "description"
        case balance = "balance"
        case createDate = "create_date"
    }
}

public extension PaymentAdjustment {
    enum CodingKeys: String, CodingKey {
        case paymentAdjustmentId = "payment_adjustment_id"
        case paymentId = "payment_id"
        case status = "status"
        case isSuccess = "is_success"
        case userId = "user_id"
        case reasonCode = "reason_code"
        case totalAdjustmentAmount = "total_adjustment_amount"
        case shopTotalAdjustmentAmount = "shop_total_adjustment_amount"
        case buyerTotalAdjustmentAmount = "buyer_total_adjustment_amount"
        case totalFeeAdjustmentAmount = "total_fee_adjustment_amount"
        case createDate = "create_date"
        case updateDate = "update_date"
    }
}

public extension PaymentAdjustmentItem {
    enum CodingKeys: String, CodingKey {
        case paymentAdjustmentItemId = "payment_adjustment_item_id"
        case paymentAdjustmentId = "payment_adjustment_id"
        case adjustmentType = "adjustment_type"
        case amount = "amount"
        case transactionId = "transaction_id"
        case createDate = "create_date"
    }
}

public extension PaymentTemplate {
    enum CodingKeys: String, CodingKey {
        case paymentTemplateId = "payment_template_id"
        case allowBt = "allow_bt"
        case allowCheck = "allow_check"
        case allowMo = "allow_mo"
        case allowOther = "allow_other"
        case allowPaypal = "allow_paypal"
        case allowCc = "allow_cc"
        case paypalEmail = "paypal_email"
        case name = "name"
        case firstLine = "first_line"
        case secondLine = "second_line"
        case city = "city"
        case state = "state"
        case zip = "zip"
        case countryId = "country_id"
        case userId = "user_id"
        case listingPaymentId = "listing_payment_id"
    }
}

public extension PropertyValue {
    enum CodingKeys: String, CodingKey {
        case propertyId = "property_id"
        case propertyName = "property_name"
        case scaleId = "scale_id"
        case scaleName = "scale_name"
        case valueIds = "value_ids"
        case values = "values"
    }
}

public extension Receipt {
    enum CodingKeys: String, CodingKey {
        case receiptId = "receipt_id"
        case receiptType = "receipt_type"
        case orderId = "order_id"
        case sellerUserId = "seller_user_id"
        case buyerUserId = "buyer_user_id"
        case creationTsz = "creation_tsz"
        case lastModifiedTsz = "last_modified_tsz"
        case name = "name"
        case firstLine = "first_line"
        case secondLine = "second_line"
        case city = "city"
        case state = "state"
        case zip = "zip"
        case formattedAddress = "formatted_address"
        case countryId = "country_id"
        case paymentMethod = "payment_method"
        case paymentEmail = "payment_email"
        case messageFromSeller = "message_from_seller"
        case messageFromBuyer = "message_from_buyer"
        case wasPaid = "was_paid"
        case totalTaxCost = "total_tax_cost"
        case totalVatCost = "total_vat_cost"
        case totalPrice = "total_price"
        case totalShippingCost = "total_shipping_cost"
        case currencyCode = "currency_code"
        case messageFromPayment = "message_from_payment"
        case wasShipped = "was_shipped"
        case buyerEmail = "buyer_email"
        case sellerEmail = "seller_email"
        case isGift = "is_gift"
        case needsGiftWrap = "needs_gift_wrap"
        case giftMessage = "gift_message"
        case giftWrapPrice = "gift_wrap_price"
        case discountAmt = "discount_amt"
        case subtotal = "subtotal"
        case grandtotal = "grandtotal"
        case adjustedGrandtotal = "adjusted_grandtotal"
        case shipments = "shipments"
    }
}

public extension ReceiptShipment {
    enum CodingKeys: String, CodingKey {
        case carrierName = "carrier_name"
        case receiptShippingId = "receipt_shipping_id"
        case trackingCode = "tracking_code"
        case trackingUrl = "tracking_url"
        case buyerNote = "buyer_note"
        case notificationDate = "notification_date"
    }
}

public extension Region {
    enum CodingKeys: String, CodingKey {
        case regionId = "region_id"
        case regionName = "region_name"
        case isDead = "is_dead"
    }
}

public extension Segment {
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case path = "path"
        case shortName = "short_name"
        case hasChildren = "has_children"
        case imageUrl = "image_url"
        case shopId = "shop_id"
        case shopName = "shop_name"
        case listingId = "listing_id"
    }
}

public extension SegmentPoster {
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case path = "path"
        case imageUrl = "image_url"
        case shopId = "shop_id"
        case shopName = "shop_name"
        case weight = "weight"
        case listingId = "listing_id"
    }
}

public extension ShippingInfo {
    enum CodingKeys: String, CodingKey {
        case shippingInfoId = "shipping_info_id"
        case originCountryId = "origin_country_id"
        case destinationCountryId = "destination_country_id"
        case currencyCode = "currency_code"
        case primaryCost = "primary_cost"
        case secondaryCost = "secondary_cost"
        case listingId = "listing_id"
        case regionId = "region_id"
        case originCountryName = "origin_country_name"
        case destinationCountryName = "destination_country_name"
    }
}

public extension ShippingOption {
    enum CodingKeys: String, CodingKey {
        case optionId = "option_id"
        case name = "name"
        case optionType = "option_type"
        case cost = "cost"
        case currencyCode = "currency_code"
    }
}

public extension ShippingTemplate {
    enum CodingKeys: String, CodingKey {
        case shippingTemplateId = "shipping_template_id"
        case title = "title"
        case userId = "user_id"
        case minProcessingDays = "min_processing_days"
        case maxProcessingDays = "max_processing_days"
        case processingDaysDisplayLabel = "processing_days_display_label"
        case originCountryId = "origin_country_id"
    }
}

public extension ShippingTemplateEntry {
    enum CodingKeys: String, CodingKey {
        case shippingTemplateEntryId = "shipping_template_entry_id"
        case shippingTemplateId = "shipping_template_id"
        case currencyCode = "currency_code"
        case originCountryId = "origin_country_id"
        case destinationCountryId = "destination_country_id"
        case destinationRegionId = "destination_region_id"
        case primaryCost = "primary_cost"
        case secondaryCost = "secondary_cost"
    }
}

public extension ShippingUpgrade {
    enum CodingKeys: String, CodingKey {
        case shippingProfileId = "shipping_profile_id"
        case valueId = "value_id"
        case value = "value"
        case price = "price"
        case secondaryPrice = "secondary_price"
        case currencyCode = "currency_code"
        case type = "type"
        case order = "order"
        case language = "language"
    }
}

public extension Shop {
    enum CodingKeys: String, CodingKey {
        case shopId = "shop_id"
        case shopName = "shop_name"
        case firstLine = "first_line"
        case secondLine = "second_line"
        case city = "city"
        case state = "state"
        case zip = "zip"
        case countryId = "country_id"
        case userId = "user_id"
        case creationTsz = "creation_tsz"
        case title = "title"
        case announcement = "announcement"
        case currencyCode = "currency_code"
        case isVacation = "is_vacation"
        case vacationMessage = "vacation_message"
        case saleMessage = "sale_message"
        case digitalSaleMessage = "digital_sale_message"
        case lastUpdatedTsz = "last_updated_tsz"
        case listingActiveCount = "listing_active_count"
        case digitalListingCount = "digital_listing_count"
        case loginName = "login_name"
        case lat = "lat"
        case lon = "lon"
        case acceptsCustomRequests = "accepts_custom_requests"
        case policyWelcome = "policy_welcome"
        case policyPayment = "policy_payment"
        case policyShipping = "policy_shipping"
        case policyRefunds = "policy_refunds"
        case policyAdditional = "policy_additional"
        case policySellerInfo = "policy_seller_info"
        case policyUpdatedTsz = "policy_updated_tsz"
        case policyHasPrivateReceiptInfo = "policy_has_private_receipt_info"
        case vacationAutoreply = "vacation_autoreply"
        case gaCode = "ga_code"
        case name = "name"
        case url = "url"
        case imageUrl760x100 = "image_url760x100"
        case numFavorers = "num_favorers"
        case languages = "languages"
        case upcomingLocalEventId = "upcoming_local_event_id"
        case iconUrlFullxfull = "icon_url_fullxfull"
        case isUsingStructuredPolicies = "is_using_structured_policies"
        case hasOnboardedStructuredPolicies = "has_onboarded_structured_policies"
        case hasUnstructuredPolicies = "has_unstructured_policies"
        case policyPrivacy = "policy_privacy"
        case useNewInventoryEndpoints = "use_new_inventory_endpoints"
        case includeDisputeFormLink = "include_dispute_form_link"
    }
}

public extension ShopAbout {
    enum CodingKeys: String, CodingKey {
        case shopId = "shop_id"
        case status = "status"
        case storyHeadline = "story_headline"
        case storyLeadingParagraph = "story_leading_paragraph"
        case story = "story"
        case relatedLinks = "related_links"
        case url = "url"
    }
}

public extension ShopAboutImage {
    enum CodingKeys: String, CodingKey {
        case shopId = "shop_id"
        case imageId = "image_id"
        case caption = "caption"
        case rank = "rank"
        case url178x178 = "url178x178"
        case url545xN = "url545x_n"
        case url760xN = "url760x_n"
        case urlFullxfull = "url_fullxfull"
    }
}

public extension ShopAboutMember {
    enum CodingKeys: String, CodingKey {
        case shopAboutMemberId = "shop_about_member_id"
        case shopId = "shop_id"
        case name = "name"
        case role = "role"
        case bio = "bio"
        case rank = "rank"
        case isOwner = "is_owner"
        case url90x90 = "url90x90"
        case url190x190 = "url190x190"
        case hasStaleTranslations = "has_stale_translations"
    }
}

public extension ShopSection {
    enum CodingKeys: String, CodingKey {
        case shopSectionId = "shop_section_id"
        case title = "title"
        case rank = "rank"
        case userId = "user_id"
        case activeListingCount = "active_listing_count"
    }
}

public extension ShopSectionTranslation {
    enum CodingKeys: String, CodingKey {
        case shopSectionId = "shop_section_id"
        case language = "language"
        case title = "title"
    }
}

public extension ShopTranslation {
    enum CodingKeys: String, CodingKey {
        case shopId = "shop_id"
        case language = "language"
        case announcement = "announcement"
        case policyWelcome = "policy_welcome"
        case policyPayment = "policy_payment"
        case policyShipping = "policy_shipping"
        case policyRefunds = "policy_refunds"
        case policyAdditional = "policy_additional"
        case policyPrivacy = "policy_privacy"
        case policySellerInfo = "policy_seller_info"
        case saleMessage = "sale_message"
        case digitalSaleMessage = "digital_sale_message"
        case title = "title"
        case vacationAutoreply = "vacation_autoreply"
        case vacationMessage = "vacation_message"
    }
}

public extension StructuredPolicies {
    enum CodingKeys: String, CodingKey {
        case structuredPoliciesId = "structured_policies_id"
        case createDate = "create_date"
        case updateDate = "update_date"
        case createDateFormatted = "create_date_formatted"
        case updateDateFormatted = "update_date_formatted"
        case hasUnstructuredPolicies = "has_unstructured_policies"
        case additionalTermsAndConditions = "additional_terms_and_conditions"
        case shopInGermany = "shop_in_germany"
        case includeDisputeFormLink = "include_dispute_form_link"
    }
}

public extension Style {
    enum CodingKeys: String, CodingKey {
        case styleId = "style_id"
        case style = "style"
    }
}

public extension Taxonomy {
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case level = "level"
        case name = "name"
        case parent = "parent"
        case parentId = "parent_id"
        case path = "path"
        case categoryId = "category_id"
        case children = "children"
        case childrenIds = "children_ids"
        case fullPathTaxonomyIds = "full_path_taxonomy_ids"
    }
}

public extension TaxonomyNodeProperty {
    enum CodingKeys: String, CodingKey {
        case propertyId = "property_id"
        case name = "name"
        case displayName = "display_name"
        case scales = "scales"
        case isRequired = "is_required"
        case supportsAttributes = "supports_attributes"
        case supportsVariations = "supports_variations"
        case isMultivalued = "is_multivalued"
        case possibleValues = "possible_values"
        case selectedValues = "selected_values"
    }
}

public extension TaxonomyPropertyScale {
    enum CodingKeys: String, CodingKey {
        case scaleId = "scale_id"
        case displayName = "display_name"
        case description = "description"
    }
}

public extension TaxonomyPropertyValue {
    enum CodingKeys: String, CodingKey {
        case valueId = "value_id"
        case name = "name"
        case scaleId = "scale_id"
        case order = "order"
        case equalTo = "equal_to"
    }
}

public extension Team {
    enum CodingKeys: String, CodingKey {
        case groupId = "group_id"
        case name = "name"
        case createDate = "create_date"
        case updateDate = "update_date"
        case tags = "tags"
    }
}

public extension Transaction {
    enum CodingKeys: String, CodingKey {
        case transactionId = "transaction_id"
        case title = "title"
        case description = "description"
        case sellerUserId = "seller_user_id"
        case buyerUserId = "buyer_user_id"
        case creationTsz = "creation_tsz"
        case paidTsz = "paid_tsz"
        case shippedTsz = "shipped_tsz"
        case price = "price"
        case currencyCode = "currency_code"
        case quantity = "quantity"
        case tags = "tags"
        case materials = "materials"
        case imageListingId = "image_listing_id"
        case receiptId = "receipt_id"
        case shippingCost = "shipping_cost"
        case isDigital = "is_digital"
        case fileData = "file_data"
        case listingId = "listing_id"
        case isQuickSale = "is_quick_sale"
        case sellerFeedbackId = "seller_feedback_id"
        case buyerFeedbackId = "buyer_feedback_id"
        case transactionType = "transaction_type"
        case url = "url"
        case variations = "variations"
        case productData = "product_data"
    }
}

public extension Treasury {
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case title = "title"
        case description = "description"
        case homepage = "homepage"
        case mature = "mature"
        case `private` = "`private`"
        case locale = "locale"
        case commentCount = "comment_count"
        case tags = "tags"
        case counts = "counts"
        case hotness = "hotness"
        case hotnessColor = "hotness_color"
        case userId = "user_id"
        case userName = "user_name"
        case userAvatarId = "user_avatar_id"
        case listings = "listings"
        case creationTsz = "creation_tsz"
        case becamePublicDate = "became_public_date"
    }
}

public extension TreasuryCounts {
    enum CodingKeys: String, CodingKey {
        case clicks = "clicks"
        case views = "views"
        case shares = "shares"
        case reports = "reports"
    }
}

public extension TreasuryListing {
    enum CodingKeys: String, CodingKey {
        case data = "data"
        case creationTsz = "creation_tsz"
    }
}

public extension TreasuryListingData {
    enum CodingKeys: String, CodingKey {
        case userId = "user_id"
        case title = "title"
        case price = "price"
        case currencyCode = "currency_code"
        case listingId = "listing_id"
        case state = "state"
        case shopName = "shop_name"
        case imageId = "image_id"
        case imageUrl75x75 = "image_url75x75"
        case imageUrl170x135 = "image_url170x135"
    }
}

public extension User {
    enum CodingKeys: String, CodingKey {
        case userId = "user_id"
        case loginName = "login_name"
        case primaryEmail = "primary_email"
        case creationTsz = "creation_tsz"
        case userPubKey = "user_pub_key"
        case referredByUserId = "referred_by_user_id"
        case feedbackInfo = "feedback_info"
        case awaitingFeedbackCount = "awaiting_feedback_count"
        case useNewInventoryEndpoints = "use_new_inventory_endpoints"
    }
}

public extension UserAddress {
    enum CodingKeys: String, CodingKey {
        case userAddressId = "user_address_id"
        case userId = "user_id"
        case name = "name"
        case firstLine = "first_line"
        case secondLine = "second_line"
        case city = "city"
        case state = "state"
        case zip = "zip"
        case countryId = "country_id"
        case countryName = "country_name"
        case isDefaultShipping = "is_default_shipping"
    }
}

public extension UserProfile {
    enum CodingKeys: String, CodingKey {
        case userProfileId = "user_profile_id"
        case userId = "user_id"
        case loginName = "login_name"
        case bio = "bio"
        case gender = "gender"
        case birthMonth = "birth_month"
        case birthDay = "birth_day"
        case birthYear = "birth_year"
        case joinTsz = "join_tsz"
        case materials = "materials"
        case countryId = "country_id"
        case region = "region"
        case city = "city"
        case location = "location"
        case avatarId = "avatar_id"
        case lat = "lat"
        case lon = "lon"
        case transactionBuyCount = "transaction_buy_count"
        case transactionSoldCount = "transaction_sold_count"
        case isSeller = "is_seller"
        case imageUrl75x75 = "image_url75x75"
        case firstName = "first_name"
        case lastName = "last_name"
    }
}

