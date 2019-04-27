// Generated using Sourcery 0.16.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation

// swiftlint:disable all

private func compareOptionals<T>(lhs: T?, rhs: T?, compare: (_ lhs: T, _ rhs: T) -> Bool) -> Bool {
    switch (lhs, rhs) {
    case let (lValue?, rValue?):
        return compare(lValue, rValue)
    case (nil, nil):
        return true
    default:
        return false
    }
}

private func compareArrays<T>(lhs: [T], rhs: [T], compare: (_ lhs: T, _ rhs: T) -> Bool) -> Bool {
    guard lhs.count == rhs.count else { return false }
    for (idx, lhsItem) in lhs.enumerated() {
        guard compare(lhsItem, rhs[idx]) else { return false }
    }

    return true
}

// MARK: - Equatable for `Type` classes, protocols, structs

// MARK: - ApiMethod AutoEquatable

extension ApiMethod: Equatable {
    public static func == (lhs: ApiMethod, rhs: ApiMethod) -> Bool {
        guard compareOptionals(lhs: lhs.name, rhs: rhs.name, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.uri, rhs: rhs.uri, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.params, rhs: rhs.params, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.defaults, rhs: rhs.defaults, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.type, rhs: rhs.type, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.visibility, rhs: rhs.visibility, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.httpMethod, rhs: rhs.httpMethod, compare: ==) else { return false }
        return true
    }
}

// MARK: - Avatar AutoEquatable

extension Avatar: Equatable {
    public static func == (lhs: Avatar, rhs: Avatar) -> Bool {
        guard compareOptionals(lhs: lhs.avatarId, rhs: rhs.avatarId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.hexCode, rhs: rhs.hexCode, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.red, rhs: rhs.red, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.green, rhs: rhs.green, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.blue, rhs: rhs.blue, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.hue, rhs: rhs.hue, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.saturation, rhs: rhs.saturation, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.brightness, rhs: rhs.brightness, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.isBlackAndWhite, rhs: rhs.isBlackAndWhite, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.creationTsz, rhs: rhs.creationTsz, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.userId, rhs: rhs.userId, compare: ==) else { return false }
        return true
    }
}

// MARK: - BillCharge AutoEquatable

extension BillCharge: Equatable {
    public static func == (lhs: BillCharge, rhs: BillCharge) -> Bool {
        guard compareOptionals(lhs: lhs.billChargeId, rhs: rhs.billChargeId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.creationTsz, rhs: rhs.creationTsz, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.type, rhs: rhs.type, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.typeId, rhs: rhs.typeId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.userId, rhs: rhs.userId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.amount, rhs: rhs.amount, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.currencyCode, rhs: rhs.currencyCode, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.creationYear, rhs: rhs.creationYear, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.creationMonth, rhs: rhs.creationMonth, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.lastModifiedTsz, rhs: rhs.lastModifiedTsz, compare: ==) else { return false }
        return true
    }
}

// MARK: - BillPayment AutoEquatable

extension BillPayment: Equatable {
    public static func == (lhs: BillPayment, rhs: BillPayment) -> Bool {
        guard compareOptionals(lhs: lhs.billPaymentId, rhs: rhs.billPaymentId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.creationTsz, rhs: rhs.creationTsz, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.type, rhs: rhs.type, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.typeId, rhs: rhs.typeId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.userId, rhs: rhs.userId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.amount, rhs: rhs.amount, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.currencyCode, rhs: rhs.currencyCode, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.creationMonth, rhs: rhs.creationMonth, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.creationYear, rhs: rhs.creationYear, compare: ==) else { return false }
        return true
    }
}

// MARK: - BillingOverview AutoEquatable

extension BillingOverview: Equatable {
    public static func == (lhs: BillingOverview, rhs: BillingOverview) -> Bool {
        guard compareOptionals(lhs: lhs.isOverdue, rhs: rhs.isOverdue, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.currencyCode, rhs: rhs.currencyCode, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.overdueBalance, rhs: rhs.overdueBalance, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.balanceDue, rhs: rhs.balanceDue, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.totalBalance, rhs: rhs.totalBalance, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.dateDue, rhs: rhs.dateDue, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.dateOverdue, rhs: rhs.dateOverdue, compare: ==) else { return false }
        return true
    }
}

// MARK: - Cart AutoEquatable

extension Cart: Equatable {
    public static func == (lhs: Cart, rhs: Cart) -> Bool {
        guard compareOptionals(lhs: lhs.cartId, rhs: rhs.cartId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.shopName, rhs: rhs.shopName, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.messageToSeller, rhs: rhs.messageToSeller, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.destinationCountryId, rhs: rhs.destinationCountryId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.couponCode, rhs: rhs.couponCode, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.currencyCode, rhs: rhs.currencyCode, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.total, rhs: rhs.total, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.subtotal, rhs: rhs.subtotal, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.shippingCost, rhs: rhs.shippingCost, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.taxCost, rhs: rhs.taxCost, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.discountAmount, rhs: rhs.discountAmount, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.shippingDiscountAmount, rhs: rhs.shippingDiscountAmount, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.taxDiscountAmount, rhs: rhs.taxDiscountAmount, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.url, rhs: rhs.url, compare: ==) else { return false }
        guard lhs.listings == rhs.listings else { return false }
        guard compareOptionals(lhs: lhs.isDownloadOnly, rhs: rhs.isDownloadOnly, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.hasVat, rhs: rhs.hasVat, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.shippingOption, rhs: rhs.shippingOption, compare: ==) else { return false }
        return true
    }
}

// MARK: - CartListing AutoEquatable

extension CartListing: Equatable {
    public static func == (lhs: CartListing, rhs: CartListing) -> Bool {
        guard compareOptionals(lhs: lhs.listingId, rhs: rhs.listingId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.purchaseQuantity, rhs: rhs.purchaseQuantity, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.purchaseState, rhs: rhs.purchaseState, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.isDigital, rhs: rhs.isDigital, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.fileData, rhs: rhs.fileData, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.listingCustomizationId, rhs: rhs.listingCustomizationId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.variationsAvailable, rhs: rhs.variationsAvailable, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.hasVariations, rhs: rhs.hasVariations, compare: ==) else { return false }
        guard lhs.selectedVariations == rhs.selectedVariations else { return false }
        return true
    }
}

// MARK: - Category AutoEquatable

extension Category: Equatable {
    public static func == (lhs: Category, rhs: Category) -> Bool {
        guard compareOptionals(lhs: lhs.categoryId, rhs: rhs.categoryId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.name, rhs: rhs.name, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.metaTitle, rhs: rhs.metaTitle, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.metaKeywords, rhs: rhs.metaKeywords, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.metaDescription, rhs: rhs.metaDescription, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.pageDescription, rhs: rhs.pageDescription, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.pageTitle, rhs: rhs.pageTitle, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.categoryName, rhs: rhs.categoryName, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.shortName, rhs: rhs.shortName, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.longName, rhs: rhs.longName, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.numChildren, rhs: rhs.numChildren, compare: ==) else { return false }
        return true
    }
}

// MARK: - Country AutoEquatable

extension Country: Equatable {
    public static func == (lhs: Country, rhs: Country) -> Bool {
        guard compareOptionals(lhs: lhs.countryId, rhs: rhs.countryId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.isoCountryCode, rhs: rhs.isoCountryCode, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.worldBankCountryCode, rhs: rhs.worldBankCountryCode, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.name, rhs: rhs.name, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.slug, rhs: rhs.slug, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.lat, rhs: rhs.lat, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.lon, rhs: rhs.lon, compare: ==) else { return false }
        return true
    }
}

// MARK: - Coupon AutoEquatable

extension Coupon: Equatable {
    public static func == (lhs: Coupon, rhs: Coupon) -> Bool {
        guard compareOptionals(lhs: lhs.couponId, rhs: rhs.couponId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.couponCode, rhs: rhs.couponCode, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.sellerActive, rhs: rhs.sellerActive, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.pctDiscount, rhs: rhs.pctDiscount, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.freeShipping, rhs: rhs.freeShipping, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.domesticOnly, rhs: rhs.domesticOnly, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.currencyCode, rhs: rhs.currencyCode, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.fixedDiscount, rhs: rhs.fixedDiscount, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.minimumPurchasePrice, rhs: rhs.minimumPurchasePrice, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.expirationDate, rhs: rhs.expirationDate, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.couponType, rhs: rhs.couponType, compare: ==) else { return false }
        return true
    }
}

// MARK: - DataType AutoEquatable

extension DataType: Equatable {
    public static func == (lhs: DataType, rhs: DataType) -> Bool {
        guard compareOptionals(lhs: lhs.type, rhs: rhs.type, compare: ==) else { return false }
        guard lhs.values == rhs.values else { return false }
        return true
    }
}

// MARK: - FavoriteListing AutoEquatable

extension FavoriteListing: Equatable {
    public static func == (lhs: FavoriteListing, rhs: FavoriteListing) -> Bool {
        guard compareOptionals(lhs: lhs.listingId, rhs: rhs.listingId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.userId, rhs: rhs.userId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.listingState, rhs: rhs.listingState, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.createDate, rhs: rhs.createDate, compare: ==) else { return false }
        return true
    }
}

// MARK: - FavoriteUser AutoEquatable

extension FavoriteUser: Equatable {
    public static func == (lhs: FavoriteUser, rhs: FavoriteUser) -> Bool {
        guard compareOptionals(lhs: lhs.userId, rhs: rhs.userId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.favoriteUserId, rhs: rhs.favoriteUserId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.targetUserId, rhs: rhs.targetUserId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.creationTsz, rhs: rhs.creationTsz, compare: ==) else { return false }
        return true
    }
}

// MARK: - FeaturedTreasury AutoEquatable

extension FeaturedTreasury: Equatable {
    public static func == (lhs: FeaturedTreasury, rhs: FeaturedTreasury) -> Bool {
        guard compareOptionals(lhs: lhs.treasuryKey, rhs: rhs.treasuryKey, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.treasuryId, rhs: rhs.treasuryId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.treasuryOwnerId, rhs: rhs.treasuryOwnerId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.url, rhs: rhs.url, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.region, rhs: rhs.region, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.activeDate, rhs: rhs.activeDate, compare: ==) else { return false }
        return true
    }
}

// MARK: - Feedback AutoEquatable

extension Feedback: Equatable {
    public static func == (lhs: Feedback, rhs: Feedback) -> Bool {
        guard compareOptionals(lhs: lhs.feedbackId, rhs: rhs.feedbackId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.transactionId, rhs: rhs.transactionId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.creatorUserId, rhs: rhs.creatorUserId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.targetUserId, rhs: rhs.targetUserId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.sellerUserId, rhs: rhs.sellerUserId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.buyerUserId, rhs: rhs.buyerUserId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.creationTsz, rhs: rhs.creationTsz, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.message, rhs: rhs.message, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.value, rhs: rhs.value, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.imageFeedbackId, rhs: rhs.imageFeedbackId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.imageUrl25x25, rhs: rhs.imageUrl25x25, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.imageUrl155x125, rhs: rhs.imageUrl155x125, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.imageUrlFullxfull, rhs: rhs.imageUrlFullxfull, compare: ==) else { return false }
        return true
    }
}

// MARK: - FeedbackInfo AutoEquatable

extension FeedbackInfo: Equatable {
    public static func == (lhs: FeedbackInfo, rhs: FeedbackInfo) -> Bool {
        guard compareOptionals(lhs: lhs.count, rhs: rhs.count, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.score, rhs: rhs.score, compare: ==) else { return false }
        return true
    }
}

// MARK: - ForumPost AutoEquatable

extension ForumPost: Equatable {
    public static func == (lhs: ForumPost, rhs: ForumPost) -> Bool {
        guard compareOptionals(lhs: lhs.threadId, rhs: rhs.threadId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.postId, rhs: rhs.postId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.post, rhs: rhs.post, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.userId, rhs: rhs.userId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.lastEditTime, rhs: rhs.lastEditTime, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.createDate, rhs: rhs.createDate, compare: ==) else { return false }
        return true
    }
}

// MARK: - Guest AutoEquatable

extension Guest: Equatable {
    public static func == (lhs: Guest, rhs: Guest) -> Bool {
        guard compareOptionals(lhs: lhs.guestId, rhs: rhs.guestId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.checkoutUrl, rhs: rhs.checkoutUrl, compare: ==) else { return false }
        return true
    }
}

// MARK: - GuestCart AutoEquatable

extension GuestCart: Equatable {
    public static func == (lhs: GuestCart, rhs: GuestCart) -> Bool {
        guard compareOptionals(lhs: lhs.cartId, rhs: rhs.cartId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.shopName, rhs: rhs.shopName, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.messageToSeller, rhs: rhs.messageToSeller, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.destinationCountryId, rhs: rhs.destinationCountryId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.couponCode, rhs: rhs.couponCode, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.currencyCode, rhs: rhs.currencyCode, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.total, rhs: rhs.total, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.subtotal, rhs: rhs.subtotal, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.shippingCost, rhs: rhs.shippingCost, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.taxCost, rhs: rhs.taxCost, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.discountAmount, rhs: rhs.discountAmount, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.shippingDiscountAmount, rhs: rhs.shippingDiscountAmount, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.taxDiscountAmount, rhs: rhs.taxDiscountAmount, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.url, rhs: rhs.url, compare: ==) else { return false }
        guard lhs.listings == rhs.listings else { return false }
        guard compareOptionals(lhs: lhs.isDownloadOnly, rhs: rhs.isDownloadOnly, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.hasVat, rhs: rhs.hasVat, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.shippingOption, rhs: rhs.shippingOption, compare: ==) else { return false }
        return true
    }
}

// MARK: - ImageType AutoEquatable

extension ImageType: Equatable {
    public static func == (lhs: ImageType, rhs: ImageType) -> Bool {
        guard compareOptionals(lhs: lhs.code, rhs: rhs.code, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.desc, rhs: rhs.desc, compare: ==) else { return false }
        guard lhs.sizes == rhs.sizes else { return false }
        return true
    }
}

// MARK: - Ledger AutoEquatable

extension Ledger: Equatable {
    public static func == (lhs: Ledger, rhs: Ledger) -> Bool {
        guard compareOptionals(lhs: lhs.ledgerId, rhs: rhs.ledgerId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.shopId, rhs: rhs.shopId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.currency, rhs: rhs.currency, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.createDate, rhs: rhs.createDate, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.updateDate, rhs: rhs.updateDate, compare: ==) else { return false }
        return true
    }
}

// MARK: - LedgerEntry AutoEquatable

extension LedgerEntry: Equatable {
    public static func == (lhs: LedgerEntry, rhs: LedgerEntry) -> Bool {
        guard compareOptionals(lhs: lhs.ledgerEntryId, rhs: rhs.ledgerEntryId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.ledgerId, rhs: rhs.ledgerId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.sequence, rhs: rhs.sequence, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.creditAmount, rhs: rhs.creditAmount, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.debitAmount, rhs: rhs.debitAmount, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.entryType, rhs: rhs.entryType, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.referenceId, rhs: rhs.referenceId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.runningBalance, rhs: rhs.runningBalance, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.createDate, rhs: rhs.createDate, compare: ==) else { return false }
        return true
    }
}

// MARK: - Listing AutoEquatable

extension Listing: Equatable {
    public static func == (lhs: Listing, rhs: Listing) -> Bool {
        guard compareOptionals(lhs: lhs.listingId, rhs: rhs.listingId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.state, rhs: rhs.state, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.userId, rhs: rhs.userId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.categoryId, rhs: rhs.categoryId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.title, rhs: rhs.title, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.description, rhs: rhs.description, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.creationTsz, rhs: rhs.creationTsz, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.endingTsz, rhs: rhs.endingTsz, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.originalCreationTsz, rhs: rhs.originalCreationTsz, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.lastModifiedTsz, rhs: rhs.lastModifiedTsz, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.price, rhs: rhs.price, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.currencyCode, rhs: rhs.currencyCode, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.quantity, rhs: rhs.quantity, compare: ==) else { return false }
        guard lhs.sku == rhs.sku else { return false }
        guard lhs.tags == rhs.tags else { return false }
        guard lhs.categoryPath == rhs.categoryPath else { return false }
        guard lhs.categoryPathIds == rhs.categoryPathIds else { return false }
        guard compareOptionals(lhs: lhs.taxonomyId, rhs: rhs.taxonomyId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.suggestedTaxonomyId, rhs: rhs.suggestedTaxonomyId, compare: ==) else { return false }
        guard lhs.taxonomyPath == rhs.taxonomyPath else { return false }
        guard lhs.materials == rhs.materials else { return false }
        guard compareOptionals(lhs: lhs.shopSectionId, rhs: rhs.shopSectionId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.featuredRank, rhs: rhs.featuredRank, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.stateTsz, rhs: rhs.stateTsz, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.url, rhs: rhs.url, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.views, rhs: rhs.views, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.numFavorers, rhs: rhs.numFavorers, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.shippingTemplateId, rhs: rhs.shippingTemplateId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.shippingProfileId, rhs: rhs.shippingProfileId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.processingMin, rhs: rhs.processingMin, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.processingMax, rhs: rhs.processingMax, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.whoMade, rhs: rhs.whoMade, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.isSupply, rhs: rhs.isSupply, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.whenMade, rhs: rhs.whenMade, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.itemWeight, rhs: rhs.itemWeight, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.itemWeightUnit, rhs: rhs.itemWeightUnit, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.itemLength, rhs: rhs.itemLength, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.itemWidth, rhs: rhs.itemWidth, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.itemHeight, rhs: rhs.itemHeight, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.itemDimensionsUnit, rhs: rhs.itemDimensionsUnit, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.isPrivate, rhs: rhs.isPrivate, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.recipient, rhs: rhs.recipient, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.occasion, rhs: rhs.occasion, compare: ==) else { return false }
        guard lhs.style == rhs.style else { return false }
        guard compareOptionals(lhs: lhs.nonTaxable, rhs: rhs.nonTaxable, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.isCustomizable, rhs: rhs.isCustomizable, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.isDigital, rhs: rhs.isDigital, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.fileData, rhs: rhs.fileData, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.canWriteInventory, rhs: rhs.canWriteInventory, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.hasVariations, rhs: rhs.hasVariations, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.shouldAutoRenew, rhs: rhs.shouldAutoRenew, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.language, rhs: rhs.language, compare: ==) else { return false }
        return true
    }
}

// MARK: - ListingFile AutoEquatable

extension ListingFile: Equatable {
    public static func == (lhs: ListingFile, rhs: ListingFile) -> Bool {
        guard compareOptionals(lhs: lhs.listingFileId, rhs: rhs.listingFileId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.listingId, rhs: rhs.listingId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.rank, rhs: rhs.rank, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.filename, rhs: rhs.filename, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.filesize, rhs: rhs.filesize, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.sizeBytes, rhs: rhs.sizeBytes, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.filetype, rhs: rhs.filetype, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.createDate, rhs: rhs.createDate, compare: ==) else { return false }
        return true
    }
}

// MARK: - ListingImage AutoEquatable

extension ListingImage: Equatable {
    public static func == (lhs: ListingImage, rhs: ListingImage) -> Bool {
        guard compareOptionals(lhs: lhs.listingImageId, rhs: rhs.listingImageId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.hexCode, rhs: rhs.hexCode, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.red, rhs: rhs.red, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.green, rhs: rhs.green, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.blue, rhs: rhs.blue, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.hue, rhs: rhs.hue, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.saturation, rhs: rhs.saturation, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.brightness, rhs: rhs.brightness, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.isBlackAndWhite, rhs: rhs.isBlackAndWhite, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.creationTsz, rhs: rhs.creationTsz, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.listingId, rhs: rhs.listingId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.rank, rhs: rhs.rank, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.url75x75, rhs: rhs.url75x75, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.url170x135, rhs: rhs.url170x135, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.url570xN, rhs: rhs.url570xN, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.urlFullxfull, rhs: rhs.urlFullxfull, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.fullHeight, rhs: rhs.fullHeight, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.fullWidth, rhs: rhs.fullWidth, compare: ==) else { return false }
        return true
    }
}

// MARK: - ListingInventory AutoEquatable

extension ListingInventory: Equatable {
    public static func == (lhs: ListingInventory, rhs: ListingInventory) -> Bool {
        guard lhs.products == rhs.products else { return false }
        guard lhs.priceOnProperty == rhs.priceOnProperty else { return false }
        guard lhs.quantityOnProperty == rhs.quantityOnProperty else { return false }
        guard lhs.skuOnProperty == rhs.skuOnProperty else { return false }
        return true
    }
}

// MARK: - ListingOffering AutoEquatable

extension ListingOffering: Equatable {
    public static func == (lhs: ListingOffering, rhs: ListingOffering) -> Bool {
        guard compareOptionals(lhs: lhs.offeringId, rhs: rhs.offeringId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.price, rhs: rhs.price, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.quantity, rhs: rhs.quantity, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.isEnabled, rhs: rhs.isEnabled, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.isDeleted, rhs: rhs.isDeleted, compare: ==) else { return false }
        return true
    }
}

// MARK: - ListingProduct AutoEquatable

extension ListingProduct: Equatable {
    public static func == (lhs: ListingProduct, rhs: ListingProduct) -> Bool {
        guard compareOptionals(lhs: lhs.productId, rhs: rhs.productId, compare: ==) else { return false }
        guard lhs.propertyValues == rhs.propertyValues else { return false }
        guard compareOptionals(lhs: lhs.sku, rhs: rhs.sku, compare: ==) else { return false }
        guard lhs.offerings == rhs.offerings else { return false }
        guard compareOptionals(lhs: lhs.isDeleted, rhs: rhs.isDeleted, compare: ==) else { return false }
        return true
    }
}

// MARK: - ListingTranslation AutoEquatable

extension ListingTranslation: Equatable {
    public static func == (lhs: ListingTranslation, rhs: ListingTranslation) -> Bool {
        guard compareOptionals(lhs: lhs.listingId, rhs: rhs.listingId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.language, rhs: rhs.language, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.title, rhs: rhs.title, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.description, rhs: rhs.description, compare: ==) else { return false }
        guard lhs.tags == rhs.tags else { return false }
        return true
    }
}

// MARK: - Money AutoEquatable

extension Money: Equatable {
    public static func == (lhs: Money, rhs: Money) -> Bool {
        guard compareOptionals(lhs: lhs.amount, rhs: rhs.amount, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.divisor, rhs: rhs.divisor, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.currencyCode, rhs: rhs.currencyCode, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.formattedRaw, rhs: rhs.formattedRaw, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.formattedShort, rhs: rhs.formattedShort, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.formattedLong, rhs: rhs.formattedLong, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.originalCurrencyCode, rhs: rhs.originalCurrencyCode, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.beforeConversion, rhs: rhs.beforeConversion, compare: ==) else { return false }
        return true
    }
}

// MARK: - ParamList AutoEquatable

extension ParamList: Equatable {
    public static func == (lhs: ParamList, rhs: ParamList) -> Bool {
        guard compareOptionals(lhs: lhs.paramName, rhs: rhs.paramName, compare: ==) else { return false }
        return true
    }
}

// MARK: - Payment AutoEquatable

extension Payment: Equatable {
    public static func == (lhs: Payment, rhs: Payment) -> Bool {
        guard compareOptionals(lhs: lhs.paymentId, rhs: rhs.paymentId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.buyerUserId, rhs: rhs.buyerUserId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.shopId, rhs: rhs.shopId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.receiptId, rhs: rhs.receiptId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.amountGross, rhs: rhs.amountGross, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.amountFees, rhs: rhs.amountFees, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.amountNet, rhs: rhs.amountNet, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.postedGross, rhs: rhs.postedGross, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.postedFees, rhs: rhs.postedFees, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.postedNet, rhs: rhs.postedNet, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.adjustedGross, rhs: rhs.adjustedGross, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.adjustedFees, rhs: rhs.adjustedFees, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.adjustedNet, rhs: rhs.adjustedNet, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.currency, rhs: rhs.currency, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.shopCurrency, rhs: rhs.shopCurrency, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.buyerCurrency, rhs: rhs.buyerCurrency, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.shippingUserId, rhs: rhs.shippingUserId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.shippingAddressId, rhs: rhs.shippingAddressId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.billingAddressId, rhs: rhs.billingAddressId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.status, rhs: rhs.status, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.shippedDate, rhs: rhs.shippedDate, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.createDate, rhs: rhs.createDate, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.updateDate, rhs: rhs.updateDate, compare: ==) else { return false }
        return true
    }
}

// MARK: - PaymentAccountLedgerEntry AutoEquatable

extension PaymentAccountLedgerEntry: Equatable {
    public static func == (lhs: PaymentAccountLedgerEntry, rhs: PaymentAccountLedgerEntry) -> Bool {
        guard compareOptionals(lhs: lhs.entryId, rhs: rhs.entryId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.ledgerId, rhs: rhs.ledgerId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.sequenceNumber, rhs: rhs.sequenceNumber, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.amount, rhs: rhs.amount, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.currency, rhs: rhs.currency, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.description, rhs: rhs.description, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.balance, rhs: rhs.balance, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.createDate, rhs: rhs.createDate, compare: ==) else { return false }
        return true
    }
}

// MARK: - PaymentAdjustment AutoEquatable

extension PaymentAdjustment: Equatable {
    public static func == (lhs: PaymentAdjustment, rhs: PaymentAdjustment) -> Bool {
        guard compareOptionals(lhs: lhs.paymentAdjustmentId, rhs: rhs.paymentAdjustmentId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.paymentId, rhs: rhs.paymentId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.status, rhs: rhs.status, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.isSuccess, rhs: rhs.isSuccess, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.userId, rhs: rhs.userId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.reasonCode, rhs: rhs.reasonCode, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.totalAdjustmentAmount, rhs: rhs.totalAdjustmentAmount, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.shopTotalAdjustmentAmount, rhs: rhs.shopTotalAdjustmentAmount, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.buyerTotalAdjustmentAmount, rhs: rhs.buyerTotalAdjustmentAmount, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.totalFeeAdjustmentAmount, rhs: rhs.totalFeeAdjustmentAmount, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.createDate, rhs: rhs.createDate, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.updateDate, rhs: rhs.updateDate, compare: ==) else { return false }
        return true
    }
}

// MARK: - PaymentAdjustmentItem AutoEquatable

extension PaymentAdjustmentItem: Equatable {
    public static func == (lhs: PaymentAdjustmentItem, rhs: PaymentAdjustmentItem) -> Bool {
        guard compareOptionals(lhs: lhs.paymentAdjustmentItemId, rhs: rhs.paymentAdjustmentItemId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.paymentAdjustmentId, rhs: rhs.paymentAdjustmentId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.adjustmentType, rhs: rhs.adjustmentType, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.amount, rhs: rhs.amount, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.transactionId, rhs: rhs.transactionId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.createDate, rhs: rhs.createDate, compare: ==) else { return false }
        return true
    }
}

// MARK: - PaymentTemplate AutoEquatable

extension PaymentTemplate: Equatable {
    public static func == (lhs: PaymentTemplate, rhs: PaymentTemplate) -> Bool {
        guard compareOptionals(lhs: lhs.paymentTemplateId, rhs: rhs.paymentTemplateId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.allowBt, rhs: rhs.allowBt, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.allowCheck, rhs: rhs.allowCheck, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.allowMo, rhs: rhs.allowMo, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.allowOther, rhs: rhs.allowOther, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.allowPaypal, rhs: rhs.allowPaypal, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.allowCc, rhs: rhs.allowCc, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.paypalEmail, rhs: rhs.paypalEmail, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.name, rhs: rhs.name, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.firstLine, rhs: rhs.firstLine, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.secondLine, rhs: rhs.secondLine, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.city, rhs: rhs.city, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.state, rhs: rhs.state, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.zip, rhs: rhs.zip, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.countryId, rhs: rhs.countryId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.userId, rhs: rhs.userId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.listingPaymentId, rhs: rhs.listingPaymentId, compare: ==) else { return false }
        return true
    }
}

// MARK: - PropertyValue AutoEquatable

extension PropertyValue: Equatable {
    public static func == (lhs: PropertyValue, rhs: PropertyValue) -> Bool {
        guard compareOptionals(lhs: lhs.propertyId, rhs: rhs.propertyId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.propertyName, rhs: rhs.propertyName, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.scaleId, rhs: rhs.scaleId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.scaleName, rhs: rhs.scaleName, compare: ==) else { return false }
        guard lhs.valueIds == rhs.valueIds else { return false }
        guard lhs.values == rhs.values else { return false }
        return true
    }
}

// MARK: - Receipt AutoEquatable

extension Receipt: Equatable {
    public static func == (lhs: Receipt, rhs: Receipt) -> Bool {
        guard compareOptionals(lhs: lhs.receiptId, rhs: rhs.receiptId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.receiptType, rhs: rhs.receiptType, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.orderId, rhs: rhs.orderId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.sellerUserId, rhs: rhs.sellerUserId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.buyerUserId, rhs: rhs.buyerUserId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.creationTsz, rhs: rhs.creationTsz, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.lastModifiedTsz, rhs: rhs.lastModifiedTsz, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.name, rhs: rhs.name, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.firstLine, rhs: rhs.firstLine, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.secondLine, rhs: rhs.secondLine, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.city, rhs: rhs.city, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.state, rhs: rhs.state, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.zip, rhs: rhs.zip, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.formattedAddress, rhs: rhs.formattedAddress, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.countryId, rhs: rhs.countryId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.paymentMethod, rhs: rhs.paymentMethod, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.paymentEmail, rhs: rhs.paymentEmail, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.messageFromSeller, rhs: rhs.messageFromSeller, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.messageFromBuyer, rhs: rhs.messageFromBuyer, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.wasPaid, rhs: rhs.wasPaid, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.totalTaxCost, rhs: rhs.totalTaxCost, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.totalVatCost, rhs: rhs.totalVatCost, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.totalPrice, rhs: rhs.totalPrice, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.totalShippingCost, rhs: rhs.totalShippingCost, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.currencyCode, rhs: rhs.currencyCode, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.messageFromPayment, rhs: rhs.messageFromPayment, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.wasShipped, rhs: rhs.wasShipped, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.buyerEmail, rhs: rhs.buyerEmail, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.sellerEmail, rhs: rhs.sellerEmail, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.isGift, rhs: rhs.isGift, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.needsGiftWrap, rhs: rhs.needsGiftWrap, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.giftMessage, rhs: rhs.giftMessage, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.giftWrapPrice, rhs: rhs.giftWrapPrice, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.discountAmt, rhs: rhs.discountAmt, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.subtotal, rhs: rhs.subtotal, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.grandtotal, rhs: rhs.grandtotal, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.adjustedGrandtotal, rhs: rhs.adjustedGrandtotal, compare: ==) else { return false }
        guard lhs.shipments == rhs.shipments else { return false }
        return true
    }
}

// MARK: - ReceiptShipment AutoEquatable

extension ReceiptShipment: Equatable {
    public static func == (lhs: ReceiptShipment, rhs: ReceiptShipment) -> Bool {
        guard compareOptionals(lhs: lhs.carrierName, rhs: rhs.carrierName, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.receiptShippingId, rhs: rhs.receiptShippingId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.trackingCode, rhs: rhs.trackingCode, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.trackingUrl, rhs: rhs.trackingUrl, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.buyerNote, rhs: rhs.buyerNote, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.notificationDate, rhs: rhs.notificationDate, compare: ==) else { return false }
        return true
    }
}

// MARK: - Region AutoEquatable

extension Region: Equatable {
    public static func == (lhs: Region, rhs: Region) -> Bool {
        guard compareOptionals(lhs: lhs.regionId, rhs: rhs.regionId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.regionName, rhs: rhs.regionName, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.isDead, rhs: rhs.isDead, compare: ==) else { return false }
        return true
    }
}

// MARK: - Segment AutoEquatable

extension Segment: Equatable {
    public static func == (lhs: Segment, rhs: Segment) -> Bool {
        guard compareOptionals(lhs: lhs.name, rhs: rhs.name, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.path, rhs: rhs.path, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.shortName, rhs: rhs.shortName, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.hasChildren, rhs: rhs.hasChildren, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.imageUrl, rhs: rhs.imageUrl, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.shopId, rhs: rhs.shopId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.shopName, rhs: rhs.shopName, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.listingId, rhs: rhs.listingId, compare: ==) else { return false }
        return true
    }
}

// MARK: - SegmentPoster AutoEquatable

extension SegmentPoster: Equatable {
    public static func == (lhs: SegmentPoster, rhs: SegmentPoster) -> Bool {
        guard compareOptionals(lhs: lhs.name, rhs: rhs.name, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.path, rhs: rhs.path, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.imageUrl, rhs: rhs.imageUrl, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.shopId, rhs: rhs.shopId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.shopName, rhs: rhs.shopName, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.weight, rhs: rhs.weight, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.listingId, rhs: rhs.listingId, compare: ==) else { return false }
        return true
    }
}

// MARK: - ShippingInfo AutoEquatable

extension ShippingInfo: Equatable {
    public static func == (lhs: ShippingInfo, rhs: ShippingInfo) -> Bool {
        guard compareOptionals(lhs: lhs.shippingInfoId, rhs: rhs.shippingInfoId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.originCountryId, rhs: rhs.originCountryId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.destinationCountryId, rhs: rhs.destinationCountryId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.currencyCode, rhs: rhs.currencyCode, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.primaryCost, rhs: rhs.primaryCost, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.secondaryCost, rhs: rhs.secondaryCost, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.listingId, rhs: rhs.listingId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.regionId, rhs: rhs.regionId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.originCountryName, rhs: rhs.originCountryName, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.destinationCountryName, rhs: rhs.destinationCountryName, compare: ==) else { return false }
        return true
    }
}

// MARK: - ShippingOption AutoEquatable

extension ShippingOption: Equatable {
    public static func == (lhs: ShippingOption, rhs: ShippingOption) -> Bool {
        guard compareOptionals(lhs: lhs.optionId, rhs: rhs.optionId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.name, rhs: rhs.name, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.optionType, rhs: rhs.optionType, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.cost, rhs: rhs.cost, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.currencyCode, rhs: rhs.currencyCode, compare: ==) else { return false }
        return true
    }
}

// MARK: - ShippingTemplate AutoEquatable

extension ShippingTemplate: Equatable {
    public static func == (lhs: ShippingTemplate, rhs: ShippingTemplate) -> Bool {
        guard compareOptionals(lhs: lhs.shippingTemplateId, rhs: rhs.shippingTemplateId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.title, rhs: rhs.title, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.userId, rhs: rhs.userId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.minProcessingDays, rhs: rhs.minProcessingDays, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.maxProcessingDays, rhs: rhs.maxProcessingDays, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.processingDaysDisplayLabel, rhs: rhs.processingDaysDisplayLabel, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.originCountryId, rhs: rhs.originCountryId, compare: ==) else { return false }
        return true
    }
}

// MARK: - ShippingTemplateEntry AutoEquatable

extension ShippingTemplateEntry: Equatable {
    public static func == (lhs: ShippingTemplateEntry, rhs: ShippingTemplateEntry) -> Bool {
        guard compareOptionals(lhs: lhs.shippingTemplateEntryId, rhs: rhs.shippingTemplateEntryId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.shippingTemplateId, rhs: rhs.shippingTemplateId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.currencyCode, rhs: rhs.currencyCode, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.originCountryId, rhs: rhs.originCountryId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.destinationCountryId, rhs: rhs.destinationCountryId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.destinationRegionId, rhs: rhs.destinationRegionId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.primaryCost, rhs: rhs.primaryCost, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.secondaryCost, rhs: rhs.secondaryCost, compare: ==) else { return false }
        return true
    }
}

// MARK: - ShippingUpgrade AutoEquatable

extension ShippingUpgrade: Equatable {
    public static func == (lhs: ShippingUpgrade, rhs: ShippingUpgrade) -> Bool {
        guard compareOptionals(lhs: lhs.shippingProfileId, rhs: rhs.shippingProfileId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.valueId, rhs: rhs.valueId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.value, rhs: rhs.value, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.price, rhs: rhs.price, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.secondaryPrice, rhs: rhs.secondaryPrice, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.currencyCode, rhs: rhs.currencyCode, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.type, rhs: rhs.type, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.order, rhs: rhs.order, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.language, rhs: rhs.language, compare: ==) else { return false }
        return true
    }
}

// MARK: - Shop AutoEquatable

extension Shop: Equatable {
    public static func == (lhs: Shop, rhs: Shop) -> Bool {
        guard compareOptionals(lhs: lhs.shopId, rhs: rhs.shopId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.shopName, rhs: rhs.shopName, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.firstLine, rhs: rhs.firstLine, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.secondLine, rhs: rhs.secondLine, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.city, rhs: rhs.city, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.state, rhs: rhs.state, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.zip, rhs: rhs.zip, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.countryId, rhs: rhs.countryId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.userId, rhs: rhs.userId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.creationTsz, rhs: rhs.creationTsz, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.title, rhs: rhs.title, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.announcement, rhs: rhs.announcement, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.currencyCode, rhs: rhs.currencyCode, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.isVacation, rhs: rhs.isVacation, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.vacationMessage, rhs: rhs.vacationMessage, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.saleMessage, rhs: rhs.saleMessage, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.digitalSaleMessage, rhs: rhs.digitalSaleMessage, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.lastUpdatedTsz, rhs: rhs.lastUpdatedTsz, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.listingActiveCount, rhs: rhs.listingActiveCount, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.digitalListingCount, rhs: rhs.digitalListingCount, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.loginName, rhs: rhs.loginName, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.lat, rhs: rhs.lat, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.lon, rhs: rhs.lon, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.acceptsCustomRequests, rhs: rhs.acceptsCustomRequests, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.policyWelcome, rhs: rhs.policyWelcome, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.policyPayment, rhs: rhs.policyPayment, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.policyShipping, rhs: rhs.policyShipping, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.policyRefunds, rhs: rhs.policyRefunds, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.policyAdditional, rhs: rhs.policyAdditional, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.policySellerInfo, rhs: rhs.policySellerInfo, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.policyUpdatedTsz, rhs: rhs.policyUpdatedTsz, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.policyHasPrivateReceiptInfo, rhs: rhs.policyHasPrivateReceiptInfo, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.vacationAutoreply, rhs: rhs.vacationAutoreply, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.gaCode, rhs: rhs.gaCode, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.name, rhs: rhs.name, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.url, rhs: rhs.url, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.imageUrl760x100, rhs: rhs.imageUrl760x100, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.numFavorers, rhs: rhs.numFavorers, compare: ==) else { return false }
        guard lhs.languages == rhs.languages else { return false }
        guard compareOptionals(lhs: lhs.upcomingLocalEventId, rhs: rhs.upcomingLocalEventId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.iconUrlFullxfull, rhs: rhs.iconUrlFullxfull, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.isUsingStructuredPolicies, rhs: rhs.isUsingStructuredPolicies, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.hasOnboardedStructuredPolicies, rhs: rhs.hasOnboardedStructuredPolicies, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.hasUnstructuredPolicies, rhs: rhs.hasUnstructuredPolicies, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.policyPrivacy, rhs: rhs.policyPrivacy, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.useNewInventoryEndpoints, rhs: rhs.useNewInventoryEndpoints, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.includeDisputeFormLink, rhs: rhs.includeDisputeFormLink, compare: ==) else { return false }
        return true
    }
}

// MARK: - ShopAbout AutoEquatable

extension ShopAbout: Equatable {
    public static func == (lhs: ShopAbout, rhs: ShopAbout) -> Bool {
        guard compareOptionals(lhs: lhs.shopId, rhs: rhs.shopId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.status, rhs: rhs.status, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.storyHeadline, rhs: rhs.storyHeadline, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.storyLeadingParagraph, rhs: rhs.storyLeadingParagraph, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.story, rhs: rhs.story, compare: ==) else { return false }
        guard lhs.relatedLinks == rhs.relatedLinks else { return false }
        guard compareOptionals(lhs: lhs.url, rhs: rhs.url, compare: ==) else { return false }
        return true
    }
}

// MARK: - ShopAboutImage AutoEquatable

extension ShopAboutImage: Equatable {
    public static func == (lhs: ShopAboutImage, rhs: ShopAboutImage) -> Bool {
        guard compareOptionals(lhs: lhs.shopId, rhs: rhs.shopId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.imageId, rhs: rhs.imageId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.caption, rhs: rhs.caption, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.rank, rhs: rhs.rank, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.url178x178, rhs: rhs.url178x178, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.url545xN, rhs: rhs.url545xN, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.url760xN, rhs: rhs.url760xN, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.urlFullxfull, rhs: rhs.urlFullxfull, compare: ==) else { return false }
        return true
    }
}

// MARK: - ShopAboutMember AutoEquatable

extension ShopAboutMember: Equatable {
    public static func == (lhs: ShopAboutMember, rhs: ShopAboutMember) -> Bool {
        guard compareOptionals(lhs: lhs.shopAboutMemberId, rhs: rhs.shopAboutMemberId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.shopId, rhs: rhs.shopId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.name, rhs: rhs.name, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.role, rhs: rhs.role, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.bio, rhs: rhs.bio, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.rank, rhs: rhs.rank, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.isOwner, rhs: rhs.isOwner, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.url90x90, rhs: rhs.url90x90, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.url190x190, rhs: rhs.url190x190, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.hasStaleTranslations, rhs: rhs.hasStaleTranslations, compare: ==) else { return false }
        return true
    }
}

// MARK: - ShopSection AutoEquatable

extension ShopSection: Equatable {
    public static func == (lhs: ShopSection, rhs: ShopSection) -> Bool {
        guard compareOptionals(lhs: lhs.shopSectionId, rhs: rhs.shopSectionId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.title, rhs: rhs.title, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.rank, rhs: rhs.rank, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.userId, rhs: rhs.userId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.activeListingCount, rhs: rhs.activeListingCount, compare: ==) else { return false }
        return true
    }
}

// MARK: - ShopSectionTranslation AutoEquatable

extension ShopSectionTranslation: Equatable {
    public static func == (lhs: ShopSectionTranslation, rhs: ShopSectionTranslation) -> Bool {
        guard compareOptionals(lhs: lhs.shopSectionId, rhs: rhs.shopSectionId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.language, rhs: rhs.language, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.title, rhs: rhs.title, compare: ==) else { return false }
        return true
    }
}

// MARK: - ShopTranslation AutoEquatable

extension ShopTranslation: Equatable {
    public static func == (lhs: ShopTranslation, rhs: ShopTranslation) -> Bool {
        guard compareOptionals(lhs: lhs.shopId, rhs: rhs.shopId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.language, rhs: rhs.language, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.announcement, rhs: rhs.announcement, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.policyWelcome, rhs: rhs.policyWelcome, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.policyPayment, rhs: rhs.policyPayment, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.policyShipping, rhs: rhs.policyShipping, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.policyRefunds, rhs: rhs.policyRefunds, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.policyAdditional, rhs: rhs.policyAdditional, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.policyPrivacy, rhs: rhs.policyPrivacy, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.policySellerInfo, rhs: rhs.policySellerInfo, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.saleMessage, rhs: rhs.saleMessage, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.digitalSaleMessage, rhs: rhs.digitalSaleMessage, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.title, rhs: rhs.title, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.vacationAutoreply, rhs: rhs.vacationAutoreply, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.vacationMessage, rhs: rhs.vacationMessage, compare: ==) else { return false }
        return true
    }
}

// MARK: - StructuredPolicies AutoEquatable

extension StructuredPolicies: Equatable {
    public static func == (lhs: StructuredPolicies, rhs: StructuredPolicies) -> Bool {
        guard compareOptionals(lhs: lhs.structuredPoliciesId, rhs: rhs.structuredPoliciesId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.createDate, rhs: rhs.createDate, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.updateDate, rhs: rhs.updateDate, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.createDateFormatted, rhs: rhs.createDateFormatted, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.updateDateFormatted, rhs: rhs.updateDateFormatted, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.hasUnstructuredPolicies, rhs: rhs.hasUnstructuredPolicies, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.additionalTermsAndConditions, rhs: rhs.additionalTermsAndConditions, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.shopInGermany, rhs: rhs.shopInGermany, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.includeDisputeFormLink, rhs: rhs.includeDisputeFormLink, compare: ==) else { return false }
        return true
    }
}

// MARK: - Style AutoEquatable

extension Style: Equatable {
    public static func == (lhs: Style, rhs: Style) -> Bool {
        guard compareOptionals(lhs: lhs.styleId, rhs: rhs.styleId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.style, rhs: rhs.style, compare: ==) else { return false }
        return true
    }
}

// MARK: - Taxonomy AutoEquatable

extension Taxonomy: Equatable {
    public static func == (lhs: Taxonomy, rhs: Taxonomy) -> Bool {
        guard compareOptionals(lhs: lhs.id, rhs: rhs.id, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.level, rhs: rhs.level, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.name, rhs: rhs.name, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.parent, rhs: rhs.parent, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.parentId, rhs: rhs.parentId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.path, rhs: rhs.path, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.categoryId, rhs: rhs.categoryId, compare: ==) else { return false }
        guard lhs.children == rhs.children else { return false }
        guard lhs.childrenIds == rhs.childrenIds else { return false }
        guard lhs.fullPathTaxonomyIds == rhs.fullPathTaxonomyIds else { return false }
        return true
    }
}

// MARK: - TaxonomyNodeProperty AutoEquatable

extension TaxonomyNodeProperty: Equatable {
    public static func == (lhs: TaxonomyNodeProperty, rhs: TaxonomyNodeProperty) -> Bool {
        guard compareOptionals(lhs: lhs.propertyId, rhs: rhs.propertyId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.name, rhs: rhs.name, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.displayName, rhs: rhs.displayName, compare: ==) else { return false }
        guard lhs.scales == rhs.scales else { return false }
        guard compareOptionals(lhs: lhs.isRequired, rhs: rhs.isRequired, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.supportsAttributes, rhs: rhs.supportsAttributes, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.supportsVariations, rhs: rhs.supportsVariations, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.isMultivalued, rhs: rhs.isMultivalued, compare: ==) else { return false }
        guard lhs.possibleValues == rhs.possibleValues else { return false }
        guard lhs.selectedValues == rhs.selectedValues else { return false }
        return true
    }
}

// MARK: - TaxonomyPropertyScale AutoEquatable

extension TaxonomyPropertyScale: Equatable {
    public static func == (lhs: TaxonomyPropertyScale, rhs: TaxonomyPropertyScale) -> Bool {
        guard compareOptionals(lhs: lhs.scaleId, rhs: rhs.scaleId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.displayName, rhs: rhs.displayName, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.description, rhs: rhs.description, compare: ==) else { return false }
        return true
    }
}

// MARK: - TaxonomyPropertyValue AutoEquatable

extension TaxonomyPropertyValue: Equatable {
    public static func == (lhs: TaxonomyPropertyValue, rhs: TaxonomyPropertyValue) -> Bool {
        guard compareOptionals(lhs: lhs.valueId, rhs: rhs.valueId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.name, rhs: rhs.name, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.scaleId, rhs: rhs.scaleId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.order, rhs: rhs.order, compare: ==) else { return false }
        guard lhs.equalTo == rhs.equalTo else { return false }
        return true
    }
}

// MARK: - Team AutoEquatable

extension Team: Equatable {
    public static func == (lhs: Team, rhs: Team) -> Bool {
        guard compareOptionals(lhs: lhs.groupId, rhs: rhs.groupId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.name, rhs: rhs.name, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.createDate, rhs: rhs.createDate, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.updateDate, rhs: rhs.updateDate, compare: ==) else { return false }
        guard lhs.tags == rhs.tags else { return false }
        return true
    }
}

// MARK: - Transaction AutoEquatable

extension Transaction: Equatable {
    public static func == (lhs: Transaction, rhs: Transaction) -> Bool {
        guard compareOptionals(lhs: lhs.transactionId, rhs: rhs.transactionId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.title, rhs: rhs.title, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.description, rhs: rhs.description, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.sellerUserId, rhs: rhs.sellerUserId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.buyerUserId, rhs: rhs.buyerUserId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.creationTsz, rhs: rhs.creationTsz, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.paidTsz, rhs: rhs.paidTsz, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.shippedTsz, rhs: rhs.shippedTsz, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.price, rhs: rhs.price, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.currencyCode, rhs: rhs.currencyCode, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.quantity, rhs: rhs.quantity, compare: ==) else { return false }
        guard lhs.tags == rhs.tags else { return false }
        guard lhs.materials == rhs.materials else { return false }
        guard compareOptionals(lhs: lhs.imageListingId, rhs: rhs.imageListingId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.receiptId, rhs: rhs.receiptId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.shippingCost, rhs: rhs.shippingCost, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.isDigital, rhs: rhs.isDigital, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.fileData, rhs: rhs.fileData, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.listingId, rhs: rhs.listingId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.isQuickSale, rhs: rhs.isQuickSale, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.sellerFeedbackId, rhs: rhs.sellerFeedbackId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.buyerFeedbackId, rhs: rhs.buyerFeedbackId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.transactionType, rhs: rhs.transactionType, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.url, rhs: rhs.url, compare: ==) else { return false }
        guard lhs.variations == rhs.variations else { return false }
        guard compareOptionals(lhs: lhs.productData, rhs: rhs.productData, compare: ==) else { return false }
        return true
    }
}

// MARK: - Treasury AutoEquatable

extension Treasury: Equatable {
    public static func == (lhs: Treasury, rhs: Treasury) -> Bool {
        guard compareOptionals(lhs: lhs.id, rhs: rhs.id, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.title, rhs: rhs.title, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.description, rhs: rhs.description, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.homepage, rhs: rhs.homepage, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.mature, rhs: rhs.mature, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.private, rhs: rhs.private, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.locale, rhs: rhs.locale, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.commentCount, rhs: rhs.commentCount, compare: ==) else { return false }
        guard lhs.tags == rhs.tags else { return false }
        guard compareOptionals(lhs: lhs.counts, rhs: rhs.counts, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.hotness, rhs: rhs.hotness, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.hotnessColor, rhs: rhs.hotnessColor, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.userId, rhs: rhs.userId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.userName, rhs: rhs.userName, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.userAvatarId, rhs: rhs.userAvatarId, compare: ==) else { return false }
        guard lhs.listings == rhs.listings else { return false }
        guard compareOptionals(lhs: lhs.creationTsz, rhs: rhs.creationTsz, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.becamePublicDate, rhs: rhs.becamePublicDate, compare: ==) else { return false }
        return true
    }
}

// MARK: - TreasuryCounts AutoEquatable

extension TreasuryCounts: Equatable {
    public static func == (lhs: TreasuryCounts, rhs: TreasuryCounts) -> Bool {
        guard compareOptionals(lhs: lhs.clicks, rhs: rhs.clicks, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.views, rhs: rhs.views, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.shares, rhs: rhs.shares, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.reports, rhs: rhs.reports, compare: ==) else { return false }
        return true
    }
}

// MARK: - TreasuryListing AutoEquatable

extension TreasuryListing: Equatable {
    public static func == (lhs: TreasuryListing, rhs: TreasuryListing) -> Bool {
        guard compareOptionals(lhs: lhs.data, rhs: rhs.data, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.creationTsz, rhs: rhs.creationTsz, compare: ==) else { return false }
        return true
    }
}

// MARK: - TreasuryListingData AutoEquatable

extension TreasuryListingData: Equatable {
    public static func == (lhs: TreasuryListingData, rhs: TreasuryListingData) -> Bool {
        guard compareOptionals(lhs: lhs.userId, rhs: rhs.userId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.title, rhs: rhs.title, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.price, rhs: rhs.price, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.currencyCode, rhs: rhs.currencyCode, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.listingId, rhs: rhs.listingId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.state, rhs: rhs.state, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.shopName, rhs: rhs.shopName, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.imageId, rhs: rhs.imageId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.imageUrl75x75, rhs: rhs.imageUrl75x75, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.imageUrl170x135, rhs: rhs.imageUrl170x135, compare: ==) else { return false }
        return true
    }
}

// MARK: - User AutoEquatable

extension User: Equatable {
    public static func == (lhs: User, rhs: User) -> Bool {
        guard compareOptionals(lhs: lhs.userId, rhs: rhs.userId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.loginName, rhs: rhs.loginName, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.primaryEmail, rhs: rhs.primaryEmail, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.creationTsz, rhs: rhs.creationTsz, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.userPubKey, rhs: rhs.userPubKey, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.referredByUserId, rhs: rhs.referredByUserId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.feedbackInfo, rhs: rhs.feedbackInfo, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.awaitingFeedbackCount, rhs: rhs.awaitingFeedbackCount, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.useNewInventoryEndpoints, rhs: rhs.useNewInventoryEndpoints, compare: ==) else { return false }
        return true
    }
}

// MARK: - UserAddress AutoEquatable

extension UserAddress: Equatable {
    public static func == (lhs: UserAddress, rhs: UserAddress) -> Bool {
        guard compareOptionals(lhs: lhs.userAddressId, rhs: rhs.userAddressId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.userId, rhs: rhs.userId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.name, rhs: rhs.name, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.firstLine, rhs: rhs.firstLine, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.secondLine, rhs: rhs.secondLine, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.city, rhs: rhs.city, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.state, rhs: rhs.state, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.zip, rhs: rhs.zip, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.countryId, rhs: rhs.countryId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.countryName, rhs: rhs.countryName, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.isDefaultShipping, rhs: rhs.isDefaultShipping, compare: ==) else { return false }
        return true
    }
}

// MARK: - UserProfile AutoEquatable

extension UserProfile: Equatable {
    public static func == (lhs: UserProfile, rhs: UserProfile) -> Bool {
        guard compareOptionals(lhs: lhs.userProfileId, rhs: rhs.userProfileId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.userId, rhs: rhs.userId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.loginName, rhs: rhs.loginName, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.bio, rhs: rhs.bio, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.gender, rhs: rhs.gender, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.birthMonth, rhs: rhs.birthMonth, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.birthDay, rhs: rhs.birthDay, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.birthYear, rhs: rhs.birthYear, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.joinTsz, rhs: rhs.joinTsz, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.materials, rhs: rhs.materials, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.countryId, rhs: rhs.countryId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.region, rhs: rhs.region, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.city, rhs: rhs.city, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.location, rhs: rhs.location, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.avatarId, rhs: rhs.avatarId, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.lat, rhs: rhs.lat, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.lon, rhs: rhs.lon, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.transactionBuyCount, rhs: rhs.transactionBuyCount, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.transactionSoldCount, rhs: rhs.transactionSoldCount, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.isSeller, rhs: rhs.isSeller, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.imageUrl75x75, rhs: rhs.imageUrl75x75, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.firstName, rhs: rhs.firstName, compare: ==) else { return false }
        guard compareOptionals(lhs: lhs.lastName, rhs: rhs.lastName, compare: ==) else { return false }
        return true
    }
}

// MARK: - Equatable for `Type` enums

// MARK: - Listing.ItemDimensionsUnit AutoEquatable

extension Listing.ItemDimensionsUnit: Equatable {
    public static func == (lhs: Listing.ItemDimensionsUnit, rhs: Listing.ItemDimensionsUnit) -> Bool {
        switch (lhs, rhs) {
        case (.in, .in):
            return true
        case (.ft, .ft):
            return true
        case (.mm, .mm):
            return true
        case (.cm, .cm):
            return true
        case (.m, .m):
            return true
        default: return false
        }
    }
}

// MARK: - Listing.ItemWeightUnit AutoEquatable

extension Listing.ItemWeightUnit: Equatable {
    public static func == (lhs: Listing.ItemWeightUnit, rhs: Listing.ItemWeightUnit) -> Bool {
        switch (lhs, rhs) {
        case (.oz, .oz):
            return true
        case (.lb, .lb):
            return true
        case (.g, .g):
            return true
        case (.kg, .kg):
            return true
        default: return false
        }
    }
}

// MARK: - Listing.Occasion AutoEquatable

extension Listing.Occasion: Equatable {
    public static func == (lhs: Listing.Occasion, rhs: Listing.Occasion) -> Bool {
        switch (lhs, rhs) {
        case (.anniversary, .anniversary):
            return true
        case (.baptism, .baptism):
            return true
        case (.barOrBatMitzvah, .barOrBatMitzvah):
            return true
        case (.birthday, .birthday):
            return true
        case (.canadaDay, .canadaDay):
            return true
        case (.chineseNewYear, .chineseNewYear):
            return true
        case (.cincoDeMayo, .cincoDeMayo):
            return true
        case (.confirmation, .confirmation):
            return true
        case (.christmas, .christmas):
            return true
        case (.dayOfTheDead, .dayOfTheDead):
            return true
        case (.easter, .easter):
            return true
        case (.eid, .eid):
            return true
        case (.engagement, .engagement):
            return true
        case (.fathersDay, .fathersDay):
            return true
        case (.getWell, .getWell):
            return true
        case (.graduation, .graduation):
            return true
        case (.halloween, .halloween):
            return true
        case (.hanukkah, .hanukkah):
            return true
        case (.housewarming, .housewarming):
            return true
        case (.kwanzaa, .kwanzaa):
            return true
        case (.prom, .prom):
            return true
        case (.july4th, .july4th):
            return true
        case (.mothersDay, .mothersDay):
            return true
        case (.newBaby, .newBaby):
            return true
        case (.newYears, .newYears):
            return true
        case (.quinceanera, .quinceanera):
            return true
        case (.retirement, .retirement):
            return true
        case (.stPatricksDay, .stPatricksDay):
            return true
        case (.sweet16, .sweet16):
            return true
        case (.sympathy, .sympathy):
            return true
        case (.thanksgiving, .thanksgiving):
            return true
        case (.valentines, .valentines):
            return true
        case (.wedding, .wedding):
            return true
        default: return false
        }
    }
}

// MARK: - Listing.Recipient AutoEquatable

extension Listing.Recipient: Equatable {
    public static func == (lhs: Listing.Recipient, rhs: Listing.Recipient) -> Bool {
        switch (lhs, rhs) {
        case (.men, .men):
            return true
        case (.women, .women):
            return true
        case (.unisexAdults, .unisexAdults):
            return true
        case (.teenBoys, .teenBoys):
            return true
        case (.teenGirls, .teenGirls):
            return true
        case (.teens, .teens):
            return true
        case (.boys, .boys):
            return true
        case (.girls, .girls):
            return true
        case (.children, .children):
            return true
        case (.babyBoys, .babyBoys):
            return true
        case (.babyGirls, .babyGirls):
            return true
        case (.babies, .babies):
            return true
        case (.birds, .birds):
            return true
        case (.cats, .cats):
            return true
        case (.dogs, .dogs):
            return true
        case (.pets, .pets):
            return true
        case (.notSpecified, .notSpecified):
            return true
        default: return false
        }
    }
}

// MARK: - Listing.WhenMade AutoEquatable

extension Listing.WhenMade: Equatable {
    public static func == (lhs: Listing.WhenMade, rhs: Listing.WhenMade) -> Bool {
        switch (lhs, rhs) {
        case (.madeToOrder, .madeToOrder):
            return true
        case (._20102019, ._20102019):
            return true
        case (._20002009, ._20002009):
            return true
        case (.before2000, .before2000):
            return true
        case (._1990s, ._1990s):
            return true
        case (._1980s, ._1980s):
            return true
        case (._1970s, ._1970s):
            return true
        case (._1960s, ._1960s):
            return true
        case (._1950s, ._1950s):
            return true
        case (._1940s, ._1940s):
            return true
        case (._1930s, ._1930s):
            return true
        case (._1920s, ._1920s):
            return true
        case (._1910s, ._1910s):
            return true
        case (._1900s, ._1900s):
            return true
        case (._1800s, ._1800s):
            return true
        case (._1700s, ._1700s):
            return true
        case (.before1700, .before1700):
            return true
        default: return false
        }
    }
}

// MARK: - Listing.WhoMade AutoEquatable

extension Listing.WhoMade: Equatable {
    public static func == (lhs: Listing.WhoMade, rhs: Listing.WhoMade) -> Bool {
        switch (lhs, rhs) {
        case (.iDid, .iDid):
            return true
        case (.collective, .collective):
            return true
        case (.someoneElse, .someoneElse):
            return true
        default: return false
        }
    }
}
