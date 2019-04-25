// Generated using Sourcery 0.16.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


import Foundation

// swiftlint:disable all

// MARK: - Hashable for `Type` classes, protocols, structs
// MARK: - ApiMethod AutoHashable
extension ApiMethod: Hashable {
    public func hash(into hasher: inout Hasher) {
        name.hash(into: &hasher)
        uri.hash(into: &hasher)
        params.hash(into: &hasher)
        defaults.hash(into: &hasher)
        type.hash(into: &hasher)
        visibility.hash(into: &hasher)
        httpMethod.hash(into: &hasher)
    }
}
// MARK: - Avatar AutoHashable
extension Avatar: Hashable {
    public func hash(into hasher: inout Hasher) {
        avatarId.hash(into: &hasher)
        hexCode.hash(into: &hasher)
        red.hash(into: &hasher)
        green.hash(into: &hasher)
        blue.hash(into: &hasher)
        hue.hash(into: &hasher)
        saturation.hash(into: &hasher)
        brightness.hash(into: &hasher)
        isBlackAndWhite.hash(into: &hasher)
        creationTsz.hash(into: &hasher)
        userId.hash(into: &hasher)
    }
}
// MARK: - BillCharge AutoHashable
extension BillCharge: Hashable {
    public func hash(into hasher: inout Hasher) {
        billChargeId.hash(into: &hasher)
        creationTsz.hash(into: &hasher)
        type.hash(into: &hasher)
        typeId.hash(into: &hasher)
        userId.hash(into: &hasher)
        amount.hash(into: &hasher)
        currencyCode.hash(into: &hasher)
        creationYear.hash(into: &hasher)
        creationMonth.hash(into: &hasher)
        lastModifiedTsz.hash(into: &hasher)
    }
}
// MARK: - BillPayment AutoHashable
extension BillPayment: Hashable {
    public func hash(into hasher: inout Hasher) {
        billPaymentId.hash(into: &hasher)
        creationTsz.hash(into: &hasher)
        type.hash(into: &hasher)
        typeId.hash(into: &hasher)
        userId.hash(into: &hasher)
        amount.hash(into: &hasher)
        currencyCode.hash(into: &hasher)
        creationMonth.hash(into: &hasher)
        creationYear.hash(into: &hasher)
    }
}
// MARK: - BillingOverview AutoHashable
extension BillingOverview: Hashable {
    public func hash(into hasher: inout Hasher) {
        isOverdue.hash(into: &hasher)
        currencyCode.hash(into: &hasher)
        overdueBalance.hash(into: &hasher)
        balanceDue.hash(into: &hasher)
        totalBalance.hash(into: &hasher)
        dateDue.hash(into: &hasher)
        dateOverdue.hash(into: &hasher)
    }
}
// MARK: - Cart AutoHashable
extension Cart: Hashable {
    public func hash(into hasher: inout Hasher) {
        cartId.hash(into: &hasher)
        shopName.hash(into: &hasher)
        messageToSeller.hash(into: &hasher)
        destinationCountryId.hash(into: &hasher)
        couponCode.hash(into: &hasher)
        currencyCode.hash(into: &hasher)
        total.hash(into: &hasher)
        subtotal.hash(into: &hasher)
        shippingCost.hash(into: &hasher)
        taxCost.hash(into: &hasher)
        discountAmount.hash(into: &hasher)
        shippingDiscountAmount.hash(into: &hasher)
        taxDiscountAmount.hash(into: &hasher)
        url.hash(into: &hasher)
        listings.hash(into: &hasher)
        isDownloadOnly.hash(into: &hasher)
        hasVat.hash(into: &hasher)
        shippingOption.hash(into: &hasher)
    }
}
// MARK: - CartListing AutoHashable
extension CartListing: Hashable {
    public func hash(into hasher: inout Hasher) {
        listingId.hash(into: &hasher)
        purchaseQuantity.hash(into: &hasher)
        purchaseState.hash(into: &hasher)
        isDigital.hash(into: &hasher)
        fileData.hash(into: &hasher)
        listingCustomizationId.hash(into: &hasher)
        variationsAvailable.hash(into: &hasher)
        hasVariations.hash(into: &hasher)
        selectedVariations.hash(into: &hasher)
    }
}
// MARK: - Category AutoHashable
extension Category: Hashable {
    public func hash(into hasher: inout Hasher) {
        categoryId.hash(into: &hasher)
        name.hash(into: &hasher)
        metaTitle.hash(into: &hasher)
        metaKeywords.hash(into: &hasher)
        metaDescription.hash(into: &hasher)
        pageDescription.hash(into: &hasher)
        pageTitle.hash(into: &hasher)
        categoryName.hash(into: &hasher)
        shortName.hash(into: &hasher)
        longName.hash(into: &hasher)
        numChildren.hash(into: &hasher)
    }
}
// MARK: - Country AutoHashable
extension Country: Hashable {
    public func hash(into hasher: inout Hasher) {
        countryId.hash(into: &hasher)
        isoCountryCode.hash(into: &hasher)
        worldBankCountryCode.hash(into: &hasher)
        name.hash(into: &hasher)
        slug.hash(into: &hasher)
        lat.hash(into: &hasher)
        lon.hash(into: &hasher)
    }
}
// MARK: - Coupon AutoHashable
extension Coupon: Hashable {
    public func hash(into hasher: inout Hasher) {
        couponId.hash(into: &hasher)
        couponCode.hash(into: &hasher)
        sellerActive.hash(into: &hasher)
        pctDiscount.hash(into: &hasher)
        freeShipping.hash(into: &hasher)
        domesticOnly.hash(into: &hasher)
        currencyCode.hash(into: &hasher)
        fixedDiscount.hash(into: &hasher)
        minimumPurchasePrice.hash(into: &hasher)
        expirationDate.hash(into: &hasher)
        couponType.hash(into: &hasher)
    }
}
// MARK: - DataType AutoHashable
extension DataType: Hashable {
    public func hash(into hasher: inout Hasher) {
        type.hash(into: &hasher)
        values.hash(into: &hasher)
    }
}
// MARK: - FavoriteListing AutoHashable
extension FavoriteListing: Hashable {
    public func hash(into hasher: inout Hasher) {
        listingId.hash(into: &hasher)
        userId.hash(into: &hasher)
        listingState.hash(into: &hasher)
        createDate.hash(into: &hasher)
    }
}
// MARK: - FavoriteUser AutoHashable
extension FavoriteUser: Hashable {
    public func hash(into hasher: inout Hasher) {
        userId.hash(into: &hasher)
        favoriteUserId.hash(into: &hasher)
        targetUserId.hash(into: &hasher)
        creationTsz.hash(into: &hasher)
    }
}
// MARK: - FeaturedTreasury AutoHashable
extension FeaturedTreasury: Hashable {
    public func hash(into hasher: inout Hasher) {
        treasuryKey.hash(into: &hasher)
        treasuryId.hash(into: &hasher)
        treasuryOwnerId.hash(into: &hasher)
        url.hash(into: &hasher)
        region.hash(into: &hasher)
        activeDate.hash(into: &hasher)
    }
}
// MARK: - Feedback AutoHashable
extension Feedback: Hashable {
    public func hash(into hasher: inout Hasher) {
        feedbackId.hash(into: &hasher)
        transactionId.hash(into: &hasher)
        creatorUserId.hash(into: &hasher)
        targetUserId.hash(into: &hasher)
        sellerUserId.hash(into: &hasher)
        buyerUserId.hash(into: &hasher)
        creationTsz.hash(into: &hasher)
        message.hash(into: &hasher)
        value.hash(into: &hasher)
        imageFeedbackId.hash(into: &hasher)
        imageUrl25x25.hash(into: &hasher)
        imageUrl155x125.hash(into: &hasher)
        imageUrlFullxfull.hash(into: &hasher)
    }
}
// MARK: - FeedbackInfo AutoHashable
extension FeedbackInfo: Hashable {
    public func hash(into hasher: inout Hasher) {
        count.hash(into: &hasher)
        score.hash(into: &hasher)
    }
}
// MARK: - ForumPost AutoHashable
extension ForumPost: Hashable {
    public func hash(into hasher: inout Hasher) {
        threadId.hash(into: &hasher)
        postId.hash(into: &hasher)
        post.hash(into: &hasher)
        userId.hash(into: &hasher)
        lastEditTime.hash(into: &hasher)
        createDate.hash(into: &hasher)
    }
}
// MARK: - Guest AutoHashable
extension Guest: Hashable {
    public func hash(into hasher: inout Hasher) {
        guestId.hash(into: &hasher)
        checkoutUrl.hash(into: &hasher)
    }
}
// MARK: - GuestCart AutoHashable
extension GuestCart: Hashable {
    public func hash(into hasher: inout Hasher) {
        cartId.hash(into: &hasher)
        shopName.hash(into: &hasher)
        messageToSeller.hash(into: &hasher)
        destinationCountryId.hash(into: &hasher)
        couponCode.hash(into: &hasher)
        currencyCode.hash(into: &hasher)
        total.hash(into: &hasher)
        subtotal.hash(into: &hasher)
        shippingCost.hash(into: &hasher)
        taxCost.hash(into: &hasher)
        discountAmount.hash(into: &hasher)
        shippingDiscountAmount.hash(into: &hasher)
        taxDiscountAmount.hash(into: &hasher)
        url.hash(into: &hasher)
        listings.hash(into: &hasher)
        isDownloadOnly.hash(into: &hasher)
        hasVat.hash(into: &hasher)
        shippingOption.hash(into: &hasher)
    }
}
// MARK: - ImageType AutoHashable
extension ImageType: Hashable {
    public func hash(into hasher: inout Hasher) {
        code.hash(into: &hasher)
        desc.hash(into: &hasher)
        sizes.hash(into: &hasher)
    }
}
// MARK: - Ledger AutoHashable
extension Ledger: Hashable {
    public func hash(into hasher: inout Hasher) {
        ledgerId.hash(into: &hasher)
        shopId.hash(into: &hasher)
        currency.hash(into: &hasher)
        createDate.hash(into: &hasher)
        updateDate.hash(into: &hasher)
    }
}
// MARK: - LedgerEntry AutoHashable
extension LedgerEntry: Hashable {
    public func hash(into hasher: inout Hasher) {
        ledgerEntryId.hash(into: &hasher)
        ledgerId.hash(into: &hasher)
        sequence.hash(into: &hasher)
        creditAmount.hash(into: &hasher)
        debitAmount.hash(into: &hasher)
        entryType.hash(into: &hasher)
        referenceId.hash(into: &hasher)
        runningBalance.hash(into: &hasher)
        createDate.hash(into: &hasher)
    }
}
// MARK: - Listing AutoHashable
extension Listing: Hashable {
    public func hash(into hasher: inout Hasher) {
        listingId.hash(into: &hasher)
        state.hash(into: &hasher)
        userId.hash(into: &hasher)
        categoryId.hash(into: &hasher)
        title.hash(into: &hasher)
        description.hash(into: &hasher)
        creationTsz.hash(into: &hasher)
        endingTsz.hash(into: &hasher)
        originalCreationTsz.hash(into: &hasher)
        lastModifiedTsz.hash(into: &hasher)
        price.hash(into: &hasher)
        currencyCode.hash(into: &hasher)
        quantity.hash(into: &hasher)
        sku.hash(into: &hasher)
        tags.hash(into: &hasher)
        categoryPath.hash(into: &hasher)
        categoryPathIds.hash(into: &hasher)
        taxonomyId.hash(into: &hasher)
        suggestedTaxonomyId.hash(into: &hasher)
        taxonomyPath.hash(into: &hasher)
        materials.hash(into: &hasher)
        shopSectionId.hash(into: &hasher)
        featuredRank.hash(into: &hasher)
        stateTsz.hash(into: &hasher)
        url.hash(into: &hasher)
        views.hash(into: &hasher)
        numFavorers.hash(into: &hasher)
        shippingTemplateId.hash(into: &hasher)
        shippingProfileId.hash(into: &hasher)
        processingMin.hash(into: &hasher)
        processingMax.hash(into: &hasher)
        whoMade.hash(into: &hasher)
        isSupply.hash(into: &hasher)
        whenMade.hash(into: &hasher)
        itemWeight.hash(into: &hasher)
        itemWeightUnit.hash(into: &hasher)
        itemLength.hash(into: &hasher)
        itemWidth.hash(into: &hasher)
        itemHeight.hash(into: &hasher)
        itemDimensionsUnit.hash(into: &hasher)
        isPrivate.hash(into: &hasher)
        recipient.hash(into: &hasher)
        occasion.hash(into: &hasher)
        style.hash(into: &hasher)
        nonTaxable.hash(into: &hasher)
        isCustomizable.hash(into: &hasher)
        isDigital.hash(into: &hasher)
        fileData.hash(into: &hasher)
        canWriteInventory.hash(into: &hasher)
        hasVariations.hash(into: &hasher)
        shouldAutoRenew.hash(into: &hasher)
        language.hash(into: &hasher)
    }
}
// MARK: - ListingFile AutoHashable
extension ListingFile: Hashable {
    public func hash(into hasher: inout Hasher) {
        listingFileId.hash(into: &hasher)
        listingId.hash(into: &hasher)
        rank.hash(into: &hasher)
        filename.hash(into: &hasher)
        filesize.hash(into: &hasher)
        sizeBytes.hash(into: &hasher)
        filetype.hash(into: &hasher)
        createDate.hash(into: &hasher)
    }
}
// MARK: - ListingImage AutoHashable
extension ListingImage: Hashable {
    public func hash(into hasher: inout Hasher) {
        listingImageId.hash(into: &hasher)
        hexCode.hash(into: &hasher)
        red.hash(into: &hasher)
        green.hash(into: &hasher)
        blue.hash(into: &hasher)
        hue.hash(into: &hasher)
        saturation.hash(into: &hasher)
        brightness.hash(into: &hasher)
        isBlackAndWhite.hash(into: &hasher)
        creationTsz.hash(into: &hasher)
        listingId.hash(into: &hasher)
        rank.hash(into: &hasher)
        url75x75.hash(into: &hasher)
        url170x135.hash(into: &hasher)
        url570xN.hash(into: &hasher)
        urlFullxfull.hash(into: &hasher)
        fullHeight.hash(into: &hasher)
        fullWidth.hash(into: &hasher)
    }
}
// MARK: - ListingInventory AutoHashable
extension ListingInventory: Hashable {
    public func hash(into hasher: inout Hasher) {
        products.hash(into: &hasher)
        priceOnProperty.hash(into: &hasher)
        quantityOnProperty.hash(into: &hasher)
        skuOnProperty.hash(into: &hasher)
    }
}
// MARK: - ListingOffering AutoHashable
extension ListingOffering: Hashable {
    public func hash(into hasher: inout Hasher) {
        offeringId.hash(into: &hasher)
        price.hash(into: &hasher)
        quantity.hash(into: &hasher)
        isEnabled.hash(into: &hasher)
        isDeleted.hash(into: &hasher)
    }
}
// MARK: - ListingProduct AutoHashable
extension ListingProduct: Hashable {
    public func hash(into hasher: inout Hasher) {
        productId.hash(into: &hasher)
        propertyValues.hash(into: &hasher)
        sku.hash(into: &hasher)
        offerings.hash(into: &hasher)
        isDeleted.hash(into: &hasher)
    }
}
// MARK: - ListingTranslation AutoHashable
extension ListingTranslation: Hashable {
    public func hash(into hasher: inout Hasher) {
        listingId.hash(into: &hasher)
        language.hash(into: &hasher)
        title.hash(into: &hasher)
        description.hash(into: &hasher)
        tags.hash(into: &hasher)
    }
}
// MARK: - Money AutoHashable
extension Money: Hashable {
    public func hash(into hasher: inout Hasher) {
        amount.hash(into: &hasher)
        divisor.hash(into: &hasher)
        currencyCode.hash(into: &hasher)
        formattedRaw.hash(into: &hasher)
        formattedShort.hash(into: &hasher)
        formattedLong.hash(into: &hasher)
        originalCurrencyCode.hash(into: &hasher)
        beforeConversion.hash(into: &hasher)
    }
}
// MARK: - ParamList AutoHashable
extension ParamList: Hashable {
    public func hash(into hasher: inout Hasher) {
        paramName.hash(into: &hasher)
    }
}
// MARK: - Payment AutoHashable
extension Payment: Hashable {
    public func hash(into hasher: inout Hasher) {
        paymentId.hash(into: &hasher)
        buyerUserId.hash(into: &hasher)
        shopId.hash(into: &hasher)
        receiptId.hash(into: &hasher)
        amountGross.hash(into: &hasher)
        amountFees.hash(into: &hasher)
        amountNet.hash(into: &hasher)
        postedGross.hash(into: &hasher)
        postedFees.hash(into: &hasher)
        postedNet.hash(into: &hasher)
        adjustedGross.hash(into: &hasher)
        adjustedFees.hash(into: &hasher)
        adjustedNet.hash(into: &hasher)
        currency.hash(into: &hasher)
        shopCurrency.hash(into: &hasher)
        buyerCurrency.hash(into: &hasher)
        shippingUserId.hash(into: &hasher)
        shippingAddressId.hash(into: &hasher)
        billingAddressId.hash(into: &hasher)
        status.hash(into: &hasher)
        shippedDate.hash(into: &hasher)
        createDate.hash(into: &hasher)
        updateDate.hash(into: &hasher)
    }
}
// MARK: - PaymentAccountLedgerEntry AutoHashable
extension PaymentAccountLedgerEntry: Hashable {
    public func hash(into hasher: inout Hasher) {
        entryId.hash(into: &hasher)
        ledgerId.hash(into: &hasher)
        sequenceNumber.hash(into: &hasher)
        amount.hash(into: &hasher)
        currency.hash(into: &hasher)
        description.hash(into: &hasher)
        balance.hash(into: &hasher)
        createDate.hash(into: &hasher)
    }
}
// MARK: - PaymentAdjustment AutoHashable
extension PaymentAdjustment: Hashable {
    public func hash(into hasher: inout Hasher) {
        paymentAdjustmentId.hash(into: &hasher)
        paymentId.hash(into: &hasher)
        status.hash(into: &hasher)
        isSuccess.hash(into: &hasher)
        userId.hash(into: &hasher)
        reasonCode.hash(into: &hasher)
        totalAdjustmentAmount.hash(into: &hasher)
        shopTotalAdjustmentAmount.hash(into: &hasher)
        buyerTotalAdjustmentAmount.hash(into: &hasher)
        totalFeeAdjustmentAmount.hash(into: &hasher)
        createDate.hash(into: &hasher)
        updateDate.hash(into: &hasher)
    }
}
// MARK: - PaymentAdjustmentItem AutoHashable
extension PaymentAdjustmentItem: Hashable {
    public func hash(into hasher: inout Hasher) {
        paymentAdjustmentItemId.hash(into: &hasher)
        paymentAdjustmentId.hash(into: &hasher)
        adjustmentType.hash(into: &hasher)
        amount.hash(into: &hasher)
        transactionId.hash(into: &hasher)
        createDate.hash(into: &hasher)
    }
}
// MARK: - PaymentTemplate AutoHashable
extension PaymentTemplate: Hashable {
    public func hash(into hasher: inout Hasher) {
        paymentTemplateId.hash(into: &hasher)
        allowBt.hash(into: &hasher)
        allowCheck.hash(into: &hasher)
        allowMo.hash(into: &hasher)
        allowOther.hash(into: &hasher)
        allowPaypal.hash(into: &hasher)
        allowCc.hash(into: &hasher)
        paypalEmail.hash(into: &hasher)
        name.hash(into: &hasher)
        firstLine.hash(into: &hasher)
        secondLine.hash(into: &hasher)
        city.hash(into: &hasher)
        state.hash(into: &hasher)
        zip.hash(into: &hasher)
        countryId.hash(into: &hasher)
        userId.hash(into: &hasher)
        listingPaymentId.hash(into: &hasher)
    }
}
// MARK: - PropertyValue AutoHashable
extension PropertyValue: Hashable {
    public func hash(into hasher: inout Hasher) {
        propertyId.hash(into: &hasher)
        propertyName.hash(into: &hasher)
        scaleId.hash(into: &hasher)
        scaleName.hash(into: &hasher)
        valueIds.hash(into: &hasher)
        values.hash(into: &hasher)
    }
}
// MARK: - Receipt AutoHashable
extension Receipt: Hashable {
    public func hash(into hasher: inout Hasher) {
        receiptId.hash(into: &hasher)
        receiptType.hash(into: &hasher)
        orderId.hash(into: &hasher)
        sellerUserId.hash(into: &hasher)
        buyerUserId.hash(into: &hasher)
        creationTsz.hash(into: &hasher)
        lastModifiedTsz.hash(into: &hasher)
        name.hash(into: &hasher)
        firstLine.hash(into: &hasher)
        secondLine.hash(into: &hasher)
        city.hash(into: &hasher)
        state.hash(into: &hasher)
        zip.hash(into: &hasher)
        formattedAddress.hash(into: &hasher)
        countryId.hash(into: &hasher)
        paymentMethod.hash(into: &hasher)
        paymentEmail.hash(into: &hasher)
        messageFromSeller.hash(into: &hasher)
        messageFromBuyer.hash(into: &hasher)
        wasPaid.hash(into: &hasher)
        totalTaxCost.hash(into: &hasher)
        totalVatCost.hash(into: &hasher)
        totalPrice.hash(into: &hasher)
        totalShippingCost.hash(into: &hasher)
        currencyCode.hash(into: &hasher)
        messageFromPayment.hash(into: &hasher)
        wasShipped.hash(into: &hasher)
        buyerEmail.hash(into: &hasher)
        sellerEmail.hash(into: &hasher)
        isGift.hash(into: &hasher)
        needsGiftWrap.hash(into: &hasher)
        giftMessage.hash(into: &hasher)
        giftWrapPrice.hash(into: &hasher)
        discountAmt.hash(into: &hasher)
        subtotal.hash(into: &hasher)
        grandtotal.hash(into: &hasher)
        adjustedGrandtotal.hash(into: &hasher)
        shipments.hash(into: &hasher)
    }
}
// MARK: - ReceiptShipment AutoHashable
extension ReceiptShipment: Hashable {
    public func hash(into hasher: inout Hasher) {
        carrierName.hash(into: &hasher)
        receiptShippingId.hash(into: &hasher)
        trackingCode.hash(into: &hasher)
        trackingUrl.hash(into: &hasher)
        buyerNote.hash(into: &hasher)
        notificationDate.hash(into: &hasher)
    }
}
// MARK: - Region AutoHashable
extension Region: Hashable {
    public func hash(into hasher: inout Hasher) {
        regionId.hash(into: &hasher)
        regionName.hash(into: &hasher)
        isDead.hash(into: &hasher)
    }
}
// MARK: - Segment AutoHashable
extension Segment: Hashable {
    public func hash(into hasher: inout Hasher) {
        name.hash(into: &hasher)
        path.hash(into: &hasher)
        shortName.hash(into: &hasher)
        hasChildren.hash(into: &hasher)
        imageUrl.hash(into: &hasher)
        shopId.hash(into: &hasher)
        shopName.hash(into: &hasher)
        listingId.hash(into: &hasher)
    }
}
// MARK: - SegmentPoster AutoHashable
extension SegmentPoster: Hashable {
    public func hash(into hasher: inout Hasher) {
        name.hash(into: &hasher)
        path.hash(into: &hasher)
        imageUrl.hash(into: &hasher)
        shopId.hash(into: &hasher)
        shopName.hash(into: &hasher)
        weight.hash(into: &hasher)
        listingId.hash(into: &hasher)
    }
}
// MARK: - ShippingInfo AutoHashable
extension ShippingInfo: Hashable {
    public func hash(into hasher: inout Hasher) {
        shippingInfoId.hash(into: &hasher)
        originCountryId.hash(into: &hasher)
        destinationCountryId.hash(into: &hasher)
        currencyCode.hash(into: &hasher)
        primaryCost.hash(into: &hasher)
        secondaryCost.hash(into: &hasher)
        listingId.hash(into: &hasher)
        regionId.hash(into: &hasher)
        originCountryName.hash(into: &hasher)
        destinationCountryName.hash(into: &hasher)
    }
}
// MARK: - ShippingOption AutoHashable
extension ShippingOption: Hashable {
    public func hash(into hasher: inout Hasher) {
        optionId.hash(into: &hasher)
        name.hash(into: &hasher)
        optionType.hash(into: &hasher)
        cost.hash(into: &hasher)
        currencyCode.hash(into: &hasher)
    }
}
// MARK: - ShippingTemplate AutoHashable
extension ShippingTemplate: Hashable {
    public func hash(into hasher: inout Hasher) {
        shippingTemplateId.hash(into: &hasher)
        title.hash(into: &hasher)
        userId.hash(into: &hasher)
        minProcessingDays.hash(into: &hasher)
        maxProcessingDays.hash(into: &hasher)
        processingDaysDisplayLabel.hash(into: &hasher)
        originCountryId.hash(into: &hasher)
    }
}
// MARK: - ShippingTemplateEntry AutoHashable
extension ShippingTemplateEntry: Hashable {
    public func hash(into hasher: inout Hasher) {
        shippingTemplateEntryId.hash(into: &hasher)
        shippingTemplateId.hash(into: &hasher)
        currencyCode.hash(into: &hasher)
        originCountryId.hash(into: &hasher)
        destinationCountryId.hash(into: &hasher)
        destinationRegionId.hash(into: &hasher)
        primaryCost.hash(into: &hasher)
        secondaryCost.hash(into: &hasher)
    }
}
// MARK: - ShippingUpgrade AutoHashable
extension ShippingUpgrade: Hashable {
    public func hash(into hasher: inout Hasher) {
        shippingProfileId.hash(into: &hasher)
        valueId.hash(into: &hasher)
        value.hash(into: &hasher)
        price.hash(into: &hasher)
        secondaryPrice.hash(into: &hasher)
        currencyCode.hash(into: &hasher)
        type.hash(into: &hasher)
        order.hash(into: &hasher)
        language.hash(into: &hasher)
    }
}
// MARK: - Shop AutoHashable
extension Shop: Hashable {
    public func hash(into hasher: inout Hasher) {
        shopId.hash(into: &hasher)
        shopName.hash(into: &hasher)
        firstLine.hash(into: &hasher)
        secondLine.hash(into: &hasher)
        city.hash(into: &hasher)
        state.hash(into: &hasher)
        zip.hash(into: &hasher)
        countryId.hash(into: &hasher)
        userId.hash(into: &hasher)
        creationTsz.hash(into: &hasher)
        title.hash(into: &hasher)
        announcement.hash(into: &hasher)
        currencyCode.hash(into: &hasher)
        isVacation.hash(into: &hasher)
        vacationMessage.hash(into: &hasher)
        saleMessage.hash(into: &hasher)
        digitalSaleMessage.hash(into: &hasher)
        lastUpdatedTsz.hash(into: &hasher)
        listingActiveCount.hash(into: &hasher)
        digitalListingCount.hash(into: &hasher)
        loginName.hash(into: &hasher)
        lat.hash(into: &hasher)
        lon.hash(into: &hasher)
        acceptsCustomRequests.hash(into: &hasher)
        policyWelcome.hash(into: &hasher)
        policyPayment.hash(into: &hasher)
        policyShipping.hash(into: &hasher)
        policyRefunds.hash(into: &hasher)
        policyAdditional.hash(into: &hasher)
        policySellerInfo.hash(into: &hasher)
        policyUpdatedTsz.hash(into: &hasher)
        policyHasPrivateReceiptInfo.hash(into: &hasher)
        vacationAutoreply.hash(into: &hasher)
        gaCode.hash(into: &hasher)
        name.hash(into: &hasher)
        url.hash(into: &hasher)
        imageUrl760x100.hash(into: &hasher)
        numFavorers.hash(into: &hasher)
        languages.hash(into: &hasher)
        upcomingLocalEventId.hash(into: &hasher)
        iconUrlFullxfull.hash(into: &hasher)
        isUsingStructuredPolicies.hash(into: &hasher)
        hasOnboardedStructuredPolicies.hash(into: &hasher)
        hasUnstructuredPolicies.hash(into: &hasher)
        policyPrivacy.hash(into: &hasher)
        useNewInventoryEndpoints.hash(into: &hasher)
        includeDisputeFormLink.hash(into: &hasher)
    }
}
// MARK: - ShopAbout AutoHashable
extension ShopAbout: Hashable {
    public func hash(into hasher: inout Hasher) {
        shopId.hash(into: &hasher)
        status.hash(into: &hasher)
        storyHeadline.hash(into: &hasher)
        storyLeadingParagraph.hash(into: &hasher)
        story.hash(into: &hasher)
        relatedLinks.hash(into: &hasher)
        url.hash(into: &hasher)
    }
}
// MARK: - ShopAboutImage AutoHashable
extension ShopAboutImage: Hashable {
    public func hash(into hasher: inout Hasher) {
        shopId.hash(into: &hasher)
        imageId.hash(into: &hasher)
        caption.hash(into: &hasher)
        rank.hash(into: &hasher)
        url178x178.hash(into: &hasher)
        url545xN.hash(into: &hasher)
        url760xN.hash(into: &hasher)
        urlFullxfull.hash(into: &hasher)
    }
}
// MARK: - ShopAboutMember AutoHashable
extension ShopAboutMember: Hashable {
    public func hash(into hasher: inout Hasher) {
        shopAboutMemberId.hash(into: &hasher)
        shopId.hash(into: &hasher)
        name.hash(into: &hasher)
        role.hash(into: &hasher)
        bio.hash(into: &hasher)
        rank.hash(into: &hasher)
        isOwner.hash(into: &hasher)
        url90x90.hash(into: &hasher)
        url190x190.hash(into: &hasher)
        hasStaleTranslations.hash(into: &hasher)
    }
}
// MARK: - ShopSection AutoHashable
extension ShopSection: Hashable {
    public func hash(into hasher: inout Hasher) {
        shopSectionId.hash(into: &hasher)
        title.hash(into: &hasher)
        rank.hash(into: &hasher)
        userId.hash(into: &hasher)
        activeListingCount.hash(into: &hasher)
    }
}
// MARK: - ShopSectionTranslation AutoHashable
extension ShopSectionTranslation: Hashable {
    public func hash(into hasher: inout Hasher) {
        shopSectionId.hash(into: &hasher)
        language.hash(into: &hasher)
        title.hash(into: &hasher)
    }
}
// MARK: - ShopTranslation AutoHashable
extension ShopTranslation: Hashable {
    public func hash(into hasher: inout Hasher) {
        shopId.hash(into: &hasher)
        language.hash(into: &hasher)
        announcement.hash(into: &hasher)
        policyWelcome.hash(into: &hasher)
        policyPayment.hash(into: &hasher)
        policyShipping.hash(into: &hasher)
        policyRefunds.hash(into: &hasher)
        policyAdditional.hash(into: &hasher)
        policyPrivacy.hash(into: &hasher)
        policySellerInfo.hash(into: &hasher)
        saleMessage.hash(into: &hasher)
        digitalSaleMessage.hash(into: &hasher)
        title.hash(into: &hasher)
        vacationAutoreply.hash(into: &hasher)
        vacationMessage.hash(into: &hasher)
    }
}
// MARK: - StructuredPolicies AutoHashable
extension StructuredPolicies: Hashable {
    public func hash(into hasher: inout Hasher) {
        structuredPoliciesId.hash(into: &hasher)
        createDate.hash(into: &hasher)
        updateDate.hash(into: &hasher)
        createDateFormatted.hash(into: &hasher)
        updateDateFormatted.hash(into: &hasher)
        hasUnstructuredPolicies.hash(into: &hasher)
        additionalTermsAndConditions.hash(into: &hasher)
        shopInGermany.hash(into: &hasher)
        includeDisputeFormLink.hash(into: &hasher)
    }
}
// MARK: - Style AutoHashable
extension Style: Hashable {
    public func hash(into hasher: inout Hasher) {
        styleId.hash(into: &hasher)
        style.hash(into: &hasher)
    }
}
// MARK: - Taxonomy AutoHashable
extension Taxonomy: Hashable {
    public func hash(into hasher: inout Hasher) {
        id.hash(into: &hasher)
        level.hash(into: &hasher)
        name.hash(into: &hasher)
        parent.hash(into: &hasher)
        parentId.hash(into: &hasher)
        path.hash(into: &hasher)
        categoryId.hash(into: &hasher)
        children.hash(into: &hasher)
        childrenIds.hash(into: &hasher)
        fullPathTaxonomyIds.hash(into: &hasher)
    }
}
// MARK: - TaxonomyNodeProperty AutoHashable
extension TaxonomyNodeProperty: Hashable {
    public func hash(into hasher: inout Hasher) {
        propertyId.hash(into: &hasher)
        name.hash(into: &hasher)
        displayName.hash(into: &hasher)
        scales.hash(into: &hasher)
        isRequired.hash(into: &hasher)
        supportsAttributes.hash(into: &hasher)
        supportsVariations.hash(into: &hasher)
        isMultivalued.hash(into: &hasher)
        possibleValues.hash(into: &hasher)
        selectedValues.hash(into: &hasher)
    }
}
// MARK: - TaxonomyPropertyScale AutoHashable
extension TaxonomyPropertyScale: Hashable {
    public func hash(into hasher: inout Hasher) {
        scaleId.hash(into: &hasher)
        displayName.hash(into: &hasher)
        description.hash(into: &hasher)
    }
}
// MARK: - TaxonomyPropertyValue AutoHashable
extension TaxonomyPropertyValue: Hashable {
    public func hash(into hasher: inout Hasher) {
        valueId.hash(into: &hasher)
        name.hash(into: &hasher)
        scaleId.hash(into: &hasher)
        order.hash(into: &hasher)
        equalTo.hash(into: &hasher)
    }
}
// MARK: - Team AutoHashable
extension Team: Hashable {
    public func hash(into hasher: inout Hasher) {
        groupId.hash(into: &hasher)
        name.hash(into: &hasher)
        createDate.hash(into: &hasher)
        updateDate.hash(into: &hasher)
        tags.hash(into: &hasher)
    }
}
// MARK: - Transaction AutoHashable
extension Transaction: Hashable {
    public func hash(into hasher: inout Hasher) {
        transactionId.hash(into: &hasher)
        title.hash(into: &hasher)
        description.hash(into: &hasher)
        sellerUserId.hash(into: &hasher)
        buyerUserId.hash(into: &hasher)
        creationTsz.hash(into: &hasher)
        paidTsz.hash(into: &hasher)
        shippedTsz.hash(into: &hasher)
        price.hash(into: &hasher)
        currencyCode.hash(into: &hasher)
        quantity.hash(into: &hasher)
        tags.hash(into: &hasher)
        materials.hash(into: &hasher)
        imageListingId.hash(into: &hasher)
        receiptId.hash(into: &hasher)
        shippingCost.hash(into: &hasher)
        isDigital.hash(into: &hasher)
        fileData.hash(into: &hasher)
        listingId.hash(into: &hasher)
        isQuickSale.hash(into: &hasher)
        sellerFeedbackId.hash(into: &hasher)
        buyerFeedbackId.hash(into: &hasher)
        transactionType.hash(into: &hasher)
        url.hash(into: &hasher)
        variations.hash(into: &hasher)
        productData.hash(into: &hasher)
    }
}
// MARK: - Treasury AutoHashable
extension Treasury: Hashable {
    public func hash(into hasher: inout Hasher) {
        id.hash(into: &hasher)
        title.hash(into: &hasher)
        description.hash(into: &hasher)
        homepage.hash(into: &hasher)
        mature.hash(into: &hasher)
        `private`.hash(into: &hasher)
        locale.hash(into: &hasher)
        commentCount.hash(into: &hasher)
        tags.hash(into: &hasher)
        counts.hash(into: &hasher)
        hotness.hash(into: &hasher)
        hotnessColor.hash(into: &hasher)
        userId.hash(into: &hasher)
        userName.hash(into: &hasher)
        userAvatarId.hash(into: &hasher)
        listings.hash(into: &hasher)
        creationTsz.hash(into: &hasher)
        becamePublicDate.hash(into: &hasher)
    }
}
// MARK: - TreasuryCounts AutoHashable
extension TreasuryCounts: Hashable {
    public func hash(into hasher: inout Hasher) {
        clicks.hash(into: &hasher)
        views.hash(into: &hasher)
        shares.hash(into: &hasher)
        reports.hash(into: &hasher)
    }
}
// MARK: - TreasuryListing AutoHashable
extension TreasuryListing: Hashable {
    public func hash(into hasher: inout Hasher) {
        data.hash(into: &hasher)
        creationTsz.hash(into: &hasher)
    }
}
// MARK: - TreasuryListingData AutoHashable
extension TreasuryListingData: Hashable {
    public func hash(into hasher: inout Hasher) {
        userId.hash(into: &hasher)
        title.hash(into: &hasher)
        price.hash(into: &hasher)
        currencyCode.hash(into: &hasher)
        listingId.hash(into: &hasher)
        state.hash(into: &hasher)
        shopName.hash(into: &hasher)
        imageId.hash(into: &hasher)
        imageUrl75x75.hash(into: &hasher)
        imageUrl170x135.hash(into: &hasher)
    }
}
// MARK: - User AutoHashable
extension User: Hashable {
    public func hash(into hasher: inout Hasher) {
        userId.hash(into: &hasher)
        loginName.hash(into: &hasher)
        primaryEmail.hash(into: &hasher)
        creationTsz.hash(into: &hasher)
        userPubKey.hash(into: &hasher)
        referredByUserId.hash(into: &hasher)
        feedbackInfo.hash(into: &hasher)
        awaitingFeedbackCount.hash(into: &hasher)
        useNewInventoryEndpoints.hash(into: &hasher)
    }
}
// MARK: - UserAddress AutoHashable
extension UserAddress: Hashable {
    public func hash(into hasher: inout Hasher) {
        userAddressId.hash(into: &hasher)
        userId.hash(into: &hasher)
        name.hash(into: &hasher)
        firstLine.hash(into: &hasher)
        secondLine.hash(into: &hasher)
        city.hash(into: &hasher)
        state.hash(into: &hasher)
        zip.hash(into: &hasher)
        countryId.hash(into: &hasher)
        countryName.hash(into: &hasher)
        isDefaultShipping.hash(into: &hasher)
    }
}
// MARK: - UserProfile AutoHashable
extension UserProfile: Hashable {
    public func hash(into hasher: inout Hasher) {
        userProfileId.hash(into: &hasher)
        userId.hash(into: &hasher)
        loginName.hash(into: &hasher)
        bio.hash(into: &hasher)
        gender.hash(into: &hasher)
        birthMonth.hash(into: &hasher)
        birthDay.hash(into: &hasher)
        birthYear.hash(into: &hasher)
        joinTsz.hash(into: &hasher)
        materials.hash(into: &hasher)
        countryId.hash(into: &hasher)
        region.hash(into: &hasher)
        city.hash(into: &hasher)
        location.hash(into: &hasher)
        avatarId.hash(into: &hasher)
        lat.hash(into: &hasher)
        lon.hash(into: &hasher)
        transactionBuyCount.hash(into: &hasher)
        transactionSoldCount.hash(into: &hasher)
        isSeller.hash(into: &hasher)
        imageUrl75x75.hash(into: &hasher)
        firstName.hash(into: &hasher)
        lastName.hash(into: &hasher)
    }
}

// MARK: - Hashable for `Type` enums

// MARK: - Listing.ItemDimensionsUnit AutoHashable
extension Listing.ItemDimensionsUnit: Hashable {
    public func hash(into hasher: inout Hasher) {
        switch self {
        case .`in`:
            1.hash(into: &hasher)
        case .ft:
            2.hash(into: &hasher)
        case .mm:
            3.hash(into: &hasher)
        case .cm:
            4.hash(into: &hasher)
        case .m:
            5.hash(into: &hasher)
        }
    }
}

// MARK: - Listing.ItemWeightUnit AutoHashable
extension Listing.ItemWeightUnit: Hashable {
    public func hash(into hasher: inout Hasher) {
        switch self {
        case .oz:
            1.hash(into: &hasher)
        case .lb:
            2.hash(into: &hasher)
        case .g:
            3.hash(into: &hasher)
        case .kg:
            4.hash(into: &hasher)
        }
    }
}

// MARK: - Listing.Occasion AutoHashable
extension Listing.Occasion: Hashable {
    public func hash(into hasher: inout Hasher) {
        switch self {
        case .anniversary:
            1.hash(into: &hasher)
        case .baptism:
            2.hash(into: &hasher)
        case .barOrBatMitzvah:
            3.hash(into: &hasher)
        case .birthday:
            4.hash(into: &hasher)
        case .canadaDay:
            5.hash(into: &hasher)
        case .chineseNewYear:
            6.hash(into: &hasher)
        case .cincoDeMayo:
            7.hash(into: &hasher)
        case .confirmation:
            8.hash(into: &hasher)
        case .christmas:
            9.hash(into: &hasher)
        case .dayOfTheDead:
            10.hash(into: &hasher)
        case .easter:
            11.hash(into: &hasher)
        case .eid:
            12.hash(into: &hasher)
        case .engagement:
            13.hash(into: &hasher)
        case .fathersDay:
            14.hash(into: &hasher)
        case .getWell:
            15.hash(into: &hasher)
        case .graduation:
            16.hash(into: &hasher)
        case .halloween:
            17.hash(into: &hasher)
        case .hanukkah:
            18.hash(into: &hasher)
        case .housewarming:
            19.hash(into: &hasher)
        case .kwanzaa:
            20.hash(into: &hasher)
        case .prom:
            21.hash(into: &hasher)
        case .july4th:
            22.hash(into: &hasher)
        case .mothersDay:
            23.hash(into: &hasher)
        case .newBaby:
            24.hash(into: &hasher)
        case .newYears:
            25.hash(into: &hasher)
        case .quinceanera:
            26.hash(into: &hasher)
        case .retirement:
            27.hash(into: &hasher)
        case .stPatricksDay:
            28.hash(into: &hasher)
        case .sweet16:
            29.hash(into: &hasher)
        case .sympathy:
            30.hash(into: &hasher)
        case .thanksgiving:
            31.hash(into: &hasher)
        case .valentines:
            32.hash(into: &hasher)
        case .wedding:
            33.hash(into: &hasher)
        }
    }
}

// MARK: - Listing.Recipient AutoHashable
extension Listing.Recipient: Hashable {
    public func hash(into hasher: inout Hasher) {
        switch self {
        case .men:
            1.hash(into: &hasher)
        case .women:
            2.hash(into: &hasher)
        case .unisexAdults:
            3.hash(into: &hasher)
        case .teenBoys:
            4.hash(into: &hasher)
        case .teenGirls:
            5.hash(into: &hasher)
        case .teens:
            6.hash(into: &hasher)
        case .boys:
            7.hash(into: &hasher)
        case .girls:
            8.hash(into: &hasher)
        case .children:
            9.hash(into: &hasher)
        case .babyBoys:
            10.hash(into: &hasher)
        case .babyGirls:
            11.hash(into: &hasher)
        case .babies:
            12.hash(into: &hasher)
        case .birds:
            13.hash(into: &hasher)
        case .cats:
            14.hash(into: &hasher)
        case .dogs:
            15.hash(into: &hasher)
        case .pets:
            16.hash(into: &hasher)
        case .notSpecified:
            17.hash(into: &hasher)
        }
    }
}

// MARK: - Listing.WhenMade AutoHashable
extension Listing.WhenMade: Hashable {
    public func hash(into hasher: inout Hasher) {
        switch self {
        case .madeToOrder:
            1.hash(into: &hasher)
        case ._20102019:
            2.hash(into: &hasher)
        case ._20002009:
            3.hash(into: &hasher)
        case .before2000:
            4.hash(into: &hasher)
        case ._1990s:
            5.hash(into: &hasher)
        case ._1980s:
            6.hash(into: &hasher)
        case ._1970s:
            7.hash(into: &hasher)
        case ._1960s:
            8.hash(into: &hasher)
        case ._1950s:
            9.hash(into: &hasher)
        case ._1940s:
            10.hash(into: &hasher)
        case ._1930s:
            11.hash(into: &hasher)
        case ._1920s:
            12.hash(into: &hasher)
        case ._1910s:
            13.hash(into: &hasher)
        case ._1900s:
            14.hash(into: &hasher)
        case ._1800s:
            15.hash(into: &hasher)
        case ._1700s:
            16.hash(into: &hasher)
        case .before1700:
            17.hash(into: &hasher)
        }
    }
}

// MARK: - Listing.WhoMade AutoHashable
extension Listing.WhoMade: Hashable {
    public func hash(into hasher: inout Hasher) {
        switch self {
        case .iDid:
            1.hash(into: &hasher)
        case .collective:
            2.hash(into: &hasher)
        case .someoneElse:
            3.hash(into: &hasher)
        }
    }
}
