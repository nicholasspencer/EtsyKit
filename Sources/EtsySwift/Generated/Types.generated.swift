// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length
public struct ApiMethod: Type {
        let name: String?
        let uri: String?
        let params: ParamList?
        let defaults: ParamList?
        let type: String?
        let visibility: String?
        let http_method: String?
}

public struct Avatar: Type {
        let avatar_id: Int?
        let hex_code: String?
        let red: Int?
        let green: Int?
        let blue: Int?
        let hue: Int?
        let saturation: Int?
        let brightness: Int?
        let is_black_and_white: Boolean?
        let creation_tsz: Float?
        let user_id: Int?
}

public struct BillCharge: Type {
        let bill_charge_id: Int?
        let creation_tsz: Float?
        let type: String?
        let type_id: Int?
        let user_id: Int?
        let amount: Float?
        let currency_code: String?
        let creation_year: Int?
        let creation_month: Int?
        let last_modified_tsz: Float?
}

public struct BillPayment: Type {
        let bill_payment_id: Int?
        let creation_tsz: Float?
        let type: String?
        let type_id: Int?
        let user_id: Int?
        let amount: Float?
        let currency_code: String?
        let creation_month: Int?
        let creation_year: Int?
}

public struct BillingOverview: Type {
        let is_overdue: Boolean?
        let currency_code: String?
        let overdue_balance: Float?
        let balance_due: Float?
        let total_balance: Float?
        let date_due: Epoch?
        let date_overdue: Epoch?
}

public struct Cart: Type {
        let cart_id: Int?
        let shop_name: String?
        let message_to_seller: String?
        let destination_country_id: Int?
        let coupon_code: String?
        let currency_code: String?
        let total: String?
        let subtotal: String?
        let shipping_cost: String?
        let tax_cost: String?
        let discount_amount: String?
        let shipping_discount_amount: String?
        let tax_discount_amount: String?
        let url: String?
        let listings: CartListing?
        let is_download_only: Boolean?
        let has_vat: Boolean?
        let shipping_option: ShippingOption?
}

public struct Category: Type {
        let category_id: Int?
        let name: String?
        let meta_title: String?
        let meta_keywords: String?
        let meta_description: String?
        let page_description: String?
        let page_title: String?
        let category_name: String?
        let short_name: String?
        let long_name: String?
        let num_children: Int?
}

public struct Country: Type {
        let country_id: Int?
        let iso_country_code: String?
        let world_bank_country_code: String?
        let name: String?
        let slug: String?
        let lat: Float?
        let lon: Float?
}

public struct Coupon: Type {
        let coupon_id: Int?
        let coupon_code: String?
        let seller_active: Boolean?
        let pct_discount: Int?
        let free_shipping: Boolean?
        let domestic_only: Boolean?
        let currency_code: String?
        let fixed_discount: String?
        let minimum_purchase_price: String?
        let expiration_date: Int?
        let coupon_type: String?
}

public struct DataType: Type {
        let type: String?
        let values: String?
}

public struct FavoriteListing: Type {
        let listing_id: Int?
        let user_id: Int?
        let listing_state: String?
        let create_date: Int?
}

public struct FavoriteUser: Type {
        let user_id: Int?
        let favorite_user_id: Int?
        let target_user_id: Int?
        let creation_tsz: Float?
}

public struct FeaturedTreasury: Type {
        let treasury_key: String?
        let treasury_id: Int?
        let treasury_owner_id: Int?
        let url: String?
        let region: String?
        let active_date: Float?
}

public struct Feedback: Type {
        let feedback_id: Int?
        let transaction_id: Int?
        let creator_user_id: Int?
        let target_user_id: Int?
        let seller_user_id: Int?
        let buyer_user_id: Int?
        let creation_tsz: Float?
        let message: String?
        let value: Int?
        let image_feedback_id: Int?
        let image_url_25x25: String?
        let image_url_155x125: String?
        let image_url_fullxfull: String?
}

public struct ForumPost: Type {
        let thread_id: Int?
        let post_id: Int?
        let post: String?
        let user_id: String?
        let last_edit_time: Int?
        let create_date: Int?
}

public struct Guest: Type {
        let guest_id: GuestId?
        let checkout_url: String?
}

public struct GuestCart: Type {
        let cart_id: Int?
        let shop_name: String?
        let message_to_seller: String?
        let destination_country_id: Int?
        let coupon_code: String?
        let currency_code: String?
        let total: String?
        let subtotal: String?
        let shipping_cost: String?
        let tax_cost: String?
        let discount_amount: String?
        let shipping_discount_amount: String?
        let tax_discount_amount: String?
        let url: String?
        let listings: CartListing?
        let is_download_only: Boolean?
        let has_vat: Boolean?
        let shipping_option: ShippingOption?
}

public struct ImageType: Type {
        let code: String?
        let desc: String?
        let sizes: String?
}

public struct Ledger: Type {
        let ledger_id: Int?
        let shop_id: String?
        let currency: String?
        let create_date: Int?
        let update_date: Int?
}

public struct LedgerEntry: Type {
        let ledger_entry_id: Int?
        let ledger_id: Int?
        let sequence: Int?
        let credit_amount: Int?
        let debit_amount: Int?
        let entry_type: String?
        let reference_id: Int?
        let running_balance: Int?
        let create_date: Int?
}

public struct Listing: Type {
        let listing_id: Int?
        let state: String?
        let user_id: Int?
        let category_id: Int?
        let title: String?
        let description: String?
        let creation_tsz: Float?
        let ending_tsz: Float?
        let original_creation_tsz: Float?
        let last_modified_tsz: Float?
        let price: String?
        let currency_code: String?
        let quantity: Int?
        let sku: String?
        let tags: String?
        let category_path: String?
        let category_path_ids: Int?
        let taxonomy_id: Int?
        let suggested_taxonomy_id: Int?
        let taxonomy_path: String?
        let materials: String?
        let shop_section_id: Int?
        let featured_rank: FeaturedRank?
        let state_tsz: Float?
        let url: String?
        let views: Int?
        let num_favorers: Int?
        let shipping_template_id: Int?
        let shipping_profile_id: Int?
        let processing_min: Int?
        let processing_max: Int?
        let who_made: Enum?
        let is_supply: Boolean?
        let when_made: Enum?
        let item_weight: Int?
        let item_weight_unit: Enum?
        let item_length: Int?
        let item_width: Int?
        let item_height: Int?
        let item_dimensions_unit: Enum?
        let is_private: Boolean?
        let recipient: Enum?
        let occasion: Enum?
        let style: String?
        let non_taxable: Boolean?
        let is_customizable: Boolean?
        let is_digital: Boolean?
        let file_data: String?
        let can_write_inventory: Boolean?
        let has_variations: Boolean?
        let should_auto_renew: Boolean?
        let language: Language?
}

public struct ListingFile: Type {
        let listing_file_id: Int?
        let listing_id: Int?
        let rank: Int?
        let filename: String?
        let filesize: String?
        let size_bytes: Int?
        let filetype: String?
        let create_date: Int?
}

public struct ListingImage: Type {
        let listing_image_id: Int?
        let hex_code: String?
        let red: Int?
        let green: Int?
        let blue: Int?
        let hue: Int?
        let saturation: Int?
        let brightness: Int?
        let is_black_and_white: Boolean?
        let creation_tsz: Float?
        let listing_id: Int?
        let rank: Int?
        let url_75x75: String?
        let url_170x135: String?
        let url_570xN: String?
        let url_fullxfull: String?
        let full_height: Int?
        let full_width: Int?
}

public struct ListingInventory: Type {
        let products: ListingProduct?
        let price_on_property: Int?
        let quantity_on_property: Int?
        let sku_on_property: Int?
}

public struct ListingOffering: Type {
        let offering_id: Int?
        let price: Money?
        let quantity: Int?
        let is_enabled: Boolean?
        let is_deleted: Boolean?
}

public struct ListingProduct: Type {
        let product_id: Int?
        let property_values: PropertyValue?
        let sku: String?
        let offerings: ListingOffering?
        let is_deleted: Boolean?
}

public struct ListingTranslation: Type {
        let listing_id: Int?
        let language: Language?
        let title: String?
        let description: String?
        let tags: String?
}

public struct Payment: Type {
        let payment_id: Int?
        let buyer_user_id: Int?
        let shop_id: Int?
        let receipt_id: Int?
        let amount_gross: Int?
        let amount_fees: Int?
        let amount_net: Int?
        let posted_gross: Int?
        let posted_fees: Int?
        let posted_net: Int?
        let adjusted_gross: Int?
        let adjusted_fees: Int?
        let adjusted_net: Int?
        let currency: String?
        let shop_currency: String?
        let buyer_currency: String?
        let shipping_user_id: Int?
        let shipping_address_id: Int?
        let billing_address_id: Int?
        let status: String?
        let shipped_date: Int?
        let create_date: Int?
        let update_date: Int?
}

public struct PaymentAccountLedgerEntry: Type {
        let entry_id: Int?
        let ledger_id: Int?
        let sequence_number: Int?
        let amount: Int?
        let currency: String?
        let description: String?
        let balance: Int?
        let create_date: Int?
}

public struct PaymentAdjustment: Type {
        let payment_adjustment_id: Int?
        let payment_id: Int?
        let status: String?
        let is_success: Boolean?
        let user_id: Int?
        let reason_code: String?
        let total_adjustment_amount: Int?
        let shop_total_adjustment_amount: Int?
        let buyer_total_adjustment_amount: Int?
        let total_fee_adjustment_amount: Int?
        let create_date: Int?
        let update_date: Int?
}

public struct PaymentAdjustmentItem: Type {
        let payment_adjustment_item_id: Int?
        let payment_adjustment_id: Int?
        let adjustment_type: String?
        let amount: Int?
        let transaction_id: Int?
        let create_date: Int?
}

public struct PaymentTemplate: Type {
        let payment_template_id: Int?
        let allow_bt: Boolean?
        let allow_check: Boolean?
        let allow_mo: Boolean?
        let allow_other: Boolean?
        let allow_paypal: Boolean?
        let allow_cc: Boolean?
        let paypal_email: String?
        let name: String?
        let first_line: String?
        let second_line: String?
        let city: String?
        let state: String?
        let zip: String?
        let country_id: Int?
        let user_id: Int?
        let listing_payment_id: Int?
}

public struct PropertyValue: Type {
        let property_id: Int?
        let property_name: String?
        let scale_id: Int?
        let scale_name: String?
        let value_ids: Int?
        let values: String?
}

public struct Receipt: Type {
        let receipt_id: Int?
        let receipt_type: Int?
        let order_id: Int?
        let seller_user_id: Int?
        let buyer_user_id: Int?
        let creation_tsz: Float?
        let last_modified_tsz: Float?
        let name: String?
        let first_line: String?
        let second_line: String?
        let city: String?
        let state: String?
        let zip: String?
        let formatted_address: String?
        let country_id: Int?
        let payment_method: String?
        let payment_email: String?
        let message_from_seller: String?
        let message_from_buyer: String?
        let was_paid: Boolean?
        let total_tax_cost: Float?
        let total_vat_cost: Float?
        let total_price: Float?
        let total_shipping_cost: Float?
        let currency_code: String?
        let message_from_payment: String?
        let was_shipped: Boolean?
        let buyer_email: String?
        let seller_email: String?
        let is_gift: Boolean?
        let needs_gift_wrap: Boolean?
        let gift_message: String?
        let gift_wrap_price: Float?
        let discount_amt: Float?
        let subtotal: Float?
        let grandtotal: Float?
        let adjusted_grandtotal: Float?
        let shipments: ReceiptShipment?
}

public struct ReceiptReviews: Type {
}

public struct Region: Type {
        let region_id: Int?
        let region_name: String?
        let is_dead: Boolean?
}

public struct Segment: Type {
        let name: String?
        let path: String?
        let short_name: String?
        let has_children: Boolean?
        let image_url: String?
        let shop_id: Int?
        let shop_name: Int?
        let listing_id: Int?
}

public struct SegmentPoster: Type {
        let name: String?
        let path: String?
        let image_url: String?
        let shop_id: Int?
        let shop_name: Int?
        let weight: Int?
        let listing_id: Int?
}

public struct ShippingInfo: Type {
        let shipping_info_id: Int?
        let origin_country_id: Int?
        let destination_country_id: Int?
        let currency_code: String?
        let primary_cost: Float?
        let secondary_cost: Float?
        let listing_id: Int?
        let region_id: Int?
        let origin_country_name: String?
        let destination_country_name: String?
}

public struct ShippingTemplate: Type {
        let shipping_template_id: Int?
        let title: String?
        let user_id: Int?
        let min_processing_days: Int?
        let max_processing_days: Int?
        let processing_days_display_label: String?
        let origin_country_id: Int?
}

public struct ShippingTemplateEntry: Type {
        let shipping_template_entry_id: Int?
        let shipping_template_id: Int?
        let currency_code: String?
        let origin_country_id: Int?
        let destination_country_id: Int?
        let destination_region_id: Int?
        let primary_cost: Float?
        let secondary_cost: Float?
}

public struct ShippingUpgrade: Type {
        let shipping_profile_id: Int?
        let value_id: Int?
        let value: String?
        let price: Float?
        let secondary_price: Float?
        let currency_code: String?
        let type: Int?
        let order: Int?
        let language: Int?
}

public struct Shop: Type {
        let shop_id: Int?
        let shop_name: String?
        let first_line: String?
        let second_line: String?
        let city: String?
        let state: String?
        let zip: String?
        let country_id: Int?
        let user_id: Int?
        let creation_tsz: Float?
        let title: String?
        let announcement: String?
        let currency_code: String?
        let is_vacation: Boolean?
        let vacation_message: String?
        let sale_message: String?
        let digital_sale_message: String?
        let last_updated_tsz: Float?
        let listing_active_count: Int?
        let digital_listing_count: Int?
        let login_name: String?
        let lat: Float?
        let lon: Float?
        let accepts_custom_requests: Boolean?
        let policy_welcome: String?
        let policy_payment: String?
        let policy_shipping: String?
        let policy_refunds: String?
        let policy_additional: String?
        let policy_seller_info: String?
        let policy_updated_tsz: Float?
        let policy_has_private_receipt_info: Boolean?
        let vacation_autoreply: String?
        let ga_code: String?
        let name: String?
        let url: String?
        let image_url_760x100: String?
        let num_favorers: Int?
        let languages: String?
        let upcoming_local_event_id: Int?
        let icon_url_fullxfull: String?
        let is_using_structured_policies: Boolean?
        let has_onboarded_structured_policies: Boolean?
        let has_unstructured_policies: Boolean?
        let policy_privacy: String?
        let use_new_inventory_endpoints: Boolean?
        let include_dispute_form_link: Boolean?
}

public struct ShopAbout: Type {
        let shop_id: Int?
        let status: String?
        let story_headline: String?
        let story_leading_paragraph: String?
        let story: String?
        let related_links: String?
        let url: String?
}

public struct ShopSection: Type {
        let shop_section_id: Int?
        let title: String?
        let rank: Int?
        let user_id: Int?
        let active_listing_count: Int?
}

public struct ShopSectionTranslation: Type {
        let shop_section_id: Int?
        let language: Language?
        let title: String?
}

public struct ShopTranslation: Type {
        let shop_id: Int?
        let language: Language?
        let announcement: String?
        let policy_welcome: String?
        let policy_payment: String?
        let policy_shipping: String?
        let policy_refunds: String?
        let policy_additional: String?
        let policy_privacy: String?
        let policy_seller_info: String?
        let sale_message: String?
        let digital_sale_message: String?
        let title: String?
        let vacation_autoreply: String?
        let vacation_message: String?
}

public struct Style: Type {
        let style_id: Int?
        let style: String?
}

public struct Taxonomy: Type {
        let id: Int?
        let level: Int?
        let name: String?
        let parent: String?
        let parent_id: Int?
        let path: String?
        let category_id: Int?
        let children: Taxonomy?
        let children_ids: Int?
        let full_path_taxonomy_ids: Int?
}

public struct TaxonomyNodeProperty: Type {
        let property_id: Int?
        let name: String?
        let display_name: String?
        let scales: TaxonomyPropertyScale?
        let is_required: Boolean?
        let supports_attributes: Boolean?
        let supports_variations: Boolean?
        let is_multivalued: Boolean?
        let possible_values: TaxonomyPropertyValue?
        let selected_values: TaxonomyPropertyValue?
}

public struct Team: Type {
        let group_id: Int?
        let name: String?
        let create_date: Int?
        let update_date: Int?
        let tags: String?
}

public struct Transaction: Type {
        let transaction_id: Int?
        let title: String?
        let description: String?
        let seller_user_id: Int?
        let buyer_user_id: Int?
        let creation_tsz: Float?
        let paid_tsz: Float?
        let shipped_tsz: Float?
        let price: Float?
        let currency_code: String?
        let quantity: Int?
        let tags: String?
        let materials: String?
        let image_listing_id: Int?
        let receipt_id: Int?
        let shipping_cost: Float?
        let is_digital: Boolean?
        let file_data: String?
        let listing_id: Int?
        let is_quick_sale: Boolean?
        let seller_feedback_id: Int?
        let buyer_feedback_id: Int?
        let transaction_type: String?
        let url: String?
        let variations: ListingInventory?
        let product_data: ListingProduct?
}

public struct Treasury: Type {
        let id: String?
        let title: String?
        let description: String?
        let homepage: Int?
        let mature: Boolean?
        let private: Boolean?
        let locale: String?
        let comment_count: Int?
        let tags: String?
        let counts: TreasuryCounts?
        let hotness: Float?
        let hotness_color: String?
        let user_id: Int?
        let user_name: String?
        let user_avatar_id: Int?
        let listings: TreasuryListing?
        let creation_tsz: Float?
        let became_public_date: Int?
}

public struct TreasuryListing: Type {
        let data: TreasuryListingData?
        let creation_tsz: Float?
}

public struct User: Type {
        let user_id: Int?
        let login_name: String?
        let primary_email: String?
        let creation_tsz: Float?
        let user_pub_key: StringJSON?
        let referred_by_user_id: Int?
        let feedback_info: FeedbackInfo?
        let awaiting_feedback_count: Int?
        let use_new_inventory_endpoints: Boolean?
}

public struct UserAddress: Type {
        let user_address_id: Int?
        let user_id: Int?
        let name: Text?
        let first_line: Text?
        let second_line: Text?
        let city: Text?
        let state: Text?
        let zip: Text?
        let country_id: Int?
        let country_name: String?
        let is_default_shipping: Boolean?
}

public struct UserProfile: Type {
        let user_profile_id: Int?
        let user_id: Int?
        let login_name: String?
        let bio: String?
        let gender: String?
        let birth_month: String?
        let birth_day: String?
        let birth_year: String?
        let join_tsz: Float?
        let materials: String?
        let country_id: Int?
        let region: String?
        let city: String?
        let location: String?
        let avatar_id: Int?
        let lat: Float?
        let lon: Float?
        let transaction_buy_count: Int?
        let transaction_sold_count: Int?
        let is_seller: Boolean?
        let image_url_75x75: String?
        let first_name: String?
        let last_name: String?
}


