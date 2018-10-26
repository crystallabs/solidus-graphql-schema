require 'graphql'

module Spree
  module GraphQL
		module Schema
			module Inputs
			end
			module Interfaces
			end
			module Payloads
			end
			module Types
			end
		end
    module Inputs
    end
    module Interfaces
    end
    module Payloads
    end
    module Types
    end
  end
end

# Implementation parts:

require_relative "./types/base_object.rb"
require_relative "./types/base_enum.rb"
require_relative "./types/base_scalar.rb"
require_relative "./types/base_input.rb"
require_relative "./interfaces/node.rb"
require_relative "./types/page_info.rb"
require_relative "./types/date_time.rb"

require_relative "./types/discount_application_target_type.rb"
require_relative "./types/discount_application_target_selection.rb"
require_relative "./types/discount_application_allocation_method.rb"
require_relative "./types/pricing_value.rb"
require_relative "./interfaces/discount_application.rb"
require_relative "./types/discount_code_application.rb"
require_relative "./types/script_discount_application.rb"
require_relative "./types/manual_discount_application.rb"

require_relative "./types/country_code.rb"
require_relative "./types/mailing_address.rb"

require_relative "./types/decimal.rb"
require_relative "./types/currency_code.rb"
require_relative "./types/money_v2.rb"
require_relative "./types/money.rb"
require_relative "./types/applied_gift_card.rb"
require_relative "./types/shipping_rate.rb"
require_relative "./types/available_shipping_rates.rb"
require_relative "./types/attribute.rb"
require_relative "./types/discount_allocation.rb"
require_relative "./types/url.rb"
require_relative "./types/crop_region.rb"
require_relative "./types/image_content_type.rb"
require_relative "./types/image.rb"
require_relative "./types/html.rb"
require_relative "./types/product_collection_sort_keys.rb"
require_relative "./types/collection.rb"
require_relative "./types/product_image_sort_keys.rb"
require_relative "./types/product_option.rb"
require_relative "./types/product_variant_sort_keys.rb"
require_relative "./types/product_price_range.rb"
require_relative "./types/product_sort_keys.rb"
require_relative "./types/selected_option.rb"
require_relative "./inputs/selected_option.rb"
require_relative "./types/weight_unit.rb"
require_relative "./types/product_variant.rb"
require_relative "./types/product.rb"
require_relative "./types/checkout_line_item.rb"
require_relative "./types/order_line_item.rb"
require_relative "./types/fulfillment_line_item.rb"
require_relative "./types/fulfillment_tracking_info.rb"
require_relative "./types/fulfillment.rb"
require_relative "./types/order.rb"
require_relative "./types/checkout.rb"
require_relative "./types/order_sort_keys.rb"
require_relative "./types/customer.rb"

require_relative "./types/customer_access_token.rb"
require_relative "./types/customer_error_code.rb"
require_relative "./types/customer_user_error.rb"

require_relative "./types/checkout_error_code.rb"
require_relative "./types/checkout_user_error.rb"
require_relative "./types/transaction_status.rb"
require_relative "./types/transaction_kind.rb"
require_relative "./types/transaction.rb"
require_relative "./types/credit_card.rb"
require_relative "./types/payment.rb"
require_relative "./types/user_error.rb"
require_relative "./payloads/checkout_complete_with_credit_card.rb"
require_relative "./interfaces/displayable_error.rb"
require_relative "./payloads/checkout_attributes_update.rb"
require_relative "./types/collection_sort_keys.rb"
require_relative "./types/article_sort_keys.rb"
require_relative "./types/blog_sort_keys.rb"
require_relative "./types/comment_author.rb"
require_relative "./types/comment.rb"
require_relative "./types/article_author.rb"
require_relative "./types/article.rb"
require_relative "./types/blog.rb"
require_relative "./types/shop_policy.rb"
require_relative "./types/domain.rb"
require_relative "./types/digital_wallet.rb"
require_relative "./types/card_brand.rb"
require_relative "./types/payment_settings.rb"
require_relative "./types/shop.rb"
require_relative "./types/pricing_percentage_value.rb"

require_relative "./inputs/customer_update.rb"
require_relative "./inputs/customer_reset.rb"
require_relative "./inputs/customer_create.rb"
require_relative "./inputs/customer_activate.rb"
require_relative "./inputs/customer_access_token_create.rb"
require_relative "./inputs/checkout_line_item_update.rb"
require_relative "./inputs/checkout_line_item.rb"
require_relative "./inputs/checkout_create.rb"
require_relative "./inputs/tokenized_payment_v2.rb"
require_relative "./inputs/money.rb"
require_relative "./inputs/credit_card_payment_v2.rb"
require_relative "./inputs/checkout_attributes_update_v2.rb"
require_relative "./inputs/mailing_address.rb"
require_relative "./inputs/tokenized_payment.rb"
require_relative "./inputs/credit_card_payment.rb"
require_relative "./inputs/attribute.rb"
require_relative "./inputs/checkout_attributes_update.rb"
require_relative "./payloads/customer_update.rb"
require_relative "./payloads/customer_reset_by_url.rb"
require_relative "./payloads/customer_reset.rb"
require_relative "./payloads/customer_recover.rb"
require_relative "./payloads/customer_default_address_update.rb"
require_relative "./payloads/customer_create.rb"
require_relative "./payloads/customer_address_update.rb"
require_relative "./payloads/customer_address_delete.rb"
require_relative "./payloads/customer_address_create.rb"
require_relative "./payloads/customer_activate.rb"
require_relative "./payloads/customer_access_token_renew.rb"
require_relative "./payloads/customer_access_token_delete.rb"
require_relative "./payloads/customer_access_token_create.rb"
require_relative "./payloads/checkout_shipping_line_update.rb"
require_relative "./payloads/checkout_line_items_update.rb"
require_relative "./payloads/checkout_line_items_remove.rb"
require_relative "./payloads/checkout_line_items_add.rb"
require_relative "./payloads/checkout_gift_cards_append.rb"
require_relative "./payloads/checkout_discount_code_remove.rb"
require_relative "./payloads/checkout_create.rb"
require_relative "./payloads/checkout_complete_free.rb"
require_relative "./payloads/checkout_customer_associate_v2.rb"
require_relative "./payloads/checkout_complete_with_tokenized_payment_v2.rb"
require_relative "./payloads/checkout_complete_with_credit_card_v2.rb"
require_relative "./payloads/checkout_attributes_update_v2.rb"
require_relative "./payloads/checkout_shipping_address_update.rb"
require_relative "./payloads/checkout_gift_card_remove.rb"
require_relative "./payloads/checkout_gift_card_apply.rb"
require_relative "./payloads/checkout_email_update.rb"
require_relative "./payloads/checkout_discount_code_apply.rb"
require_relative "./payloads/checkout_customer_disassociate.rb"
require_relative "./payloads/checkout_customer_associate.rb"
require_relative "./payloads/checkout_complete_with_tokenized_payment.rb"

require_relative "./types/query_root.rb"
require_relative "./types/mutation.rb"

# Schema parts:

require_relative "./schema/types/base_object.rb"
require_relative "./schema/types/base_enum.rb"
require_relative "./schema/types/base_scalar.rb"
require_relative "./schema/types/base_input.rb"
require_relative "./schema/interfaces/node.rb"
require_relative "./schema/types/page_info.rb"
require_relative "./schema/types/date_time.rb"

require_relative "./schema/types/discount_application_target_type.rb"
require_relative "./schema/types/discount_application_target_selection.rb"
require_relative "./schema/types/discount_application_allocation_method.rb"
require_relative "./schema/types/pricing_value.rb"
require_relative "./schema/interfaces/discount_application.rb"
require_relative "./schema/types/discount_code_application.rb"
require_relative "./schema/types/script_discount_application.rb"
require_relative "./schema/types/manual_discount_application.rb"

require_relative "./schema/types/country_code.rb"
require_relative "./schema/types/mailing_address.rb"

require_relative "./schema/types/decimal.rb"
require_relative "./schema/types/currency_code.rb"
require_relative "./schema/types/money_v2.rb"
require_relative "./schema/types/money.rb"
require_relative "./schema/types/applied_gift_card.rb"
require_relative "./schema/types/shipping_rate.rb"
require_relative "./schema/types/available_shipping_rates.rb"
require_relative "./schema/types/attribute.rb"
require_relative "./schema/types/discount_allocation.rb"
require_relative "./schema/types/url.rb"
require_relative "./schema/types/crop_region.rb"
require_relative "./schema/types/image_content_type.rb"
require_relative "./schema/types/image.rb"
require_relative "./schema/types/html.rb"
require_relative "./schema/types/product_collection_sort_keys.rb"
require_relative "./schema/types/collection.rb"
require_relative "./schema/types/product_image_sort_keys.rb"
require_relative "./schema/types/product_option.rb"
require_relative "./schema/types/product_variant_sort_keys.rb"
require_relative "./schema/types/product_price_range.rb"
require_relative "./schema/types/product_sort_keys.rb"
require_relative "./schema/types/selected_option.rb"
require_relative "./schema/inputs/selected_option.rb"
require_relative "./schema/types/weight_unit.rb"
require_relative "./schema/types/product_variant.rb"
require_relative "./schema/types/product.rb"
require_relative "./schema/types/checkout_line_item.rb"
require_relative "./schema/types/order_line_item.rb"
require_relative "./schema/types/fulfillment_line_item.rb"
require_relative "./schema/types/fulfillment_tracking_info.rb"
require_relative "./schema/types/fulfillment.rb"
require_relative "./schema/types/order.rb"
require_relative "./schema/types/checkout.rb"
require_relative "./schema/types/order_sort_keys.rb"
require_relative "./schema/types/customer.rb"

require_relative "./schema/types/customer_access_token.rb"
require_relative "./schema/types/customer_error_code.rb"
require_relative "./schema/types/customer_user_error.rb"

require_relative "./schema/types/checkout_error_code.rb"
require_relative "./schema/types/checkout_user_error.rb"
require_relative "./schema/types/transaction_status.rb"
require_relative "./schema/types/transaction_kind.rb"
require_relative "./schema/types/transaction.rb"
require_relative "./schema/types/credit_card.rb"
require_relative "./schema/types/payment.rb"
require_relative "./schema/types/user_error.rb"
require_relative "./schema/payloads/checkout_complete_with_credit_card.rb"
require_relative "./schema/interfaces/displayable_error.rb"
require_relative "./schema/payloads/checkout_attributes_update.rb"
require_relative "./schema/types/collection_sort_keys.rb"
require_relative "./schema/types/article_sort_keys.rb"
require_relative "./schema/types/blog_sort_keys.rb"
require_relative "./schema/types/comment_author.rb"
require_relative "./schema/types/comment.rb"
require_relative "./schema/types/article_author.rb"
require_relative "./schema/types/article.rb"
require_relative "./schema/types/blog.rb"
require_relative "./schema/types/shop_policy.rb"
require_relative "./schema/types/domain.rb"
require_relative "./schema/types/digital_wallet.rb"
require_relative "./schema/types/card_brand.rb"
require_relative "./schema/types/payment_settings.rb"
require_relative "./schema/types/shop.rb"
require_relative "./schema/types/pricing_percentage_value.rb"

require_relative "./schema/inputs/customer_update.rb"
require_relative "./schema/inputs/customer_reset.rb"
require_relative "./schema/inputs/customer_create.rb"
require_relative "./schema/inputs/customer_activate.rb"
require_relative "./schema/inputs/customer_access_token_create.rb"
require_relative "./schema/inputs/checkout_line_item_update.rb"
require_relative "./schema/inputs/checkout_line_item.rb"
require_relative "./schema/inputs/checkout_create.rb"
require_relative "./schema/inputs/tokenized_payment_v2.rb"
require_relative "./schema/inputs/money.rb"
require_relative "./schema/inputs/credit_card_payment_v2.rb"
require_relative "./schema/inputs/checkout_attributes_update_v2.rb"
require_relative "./schema/inputs/mailing_address.rb"
require_relative "./schema/inputs/tokenized_payment.rb"
require_relative "./schema/inputs/credit_card_payment.rb"
require_relative "./schema/inputs/attribute.rb"
require_relative "./schema/inputs/checkout_attributes_update.rb"
require_relative "./schema/payloads/customer_update.rb"
require_relative "./schema/payloads/customer_reset_by_url.rb"
require_relative "./schema/payloads/customer_reset.rb"
require_relative "./schema/payloads/customer_recover.rb"
require_relative "./schema/payloads/customer_default_address_update.rb"
require_relative "./schema/payloads/customer_create.rb"
require_relative "./schema/payloads/customer_address_update.rb"
require_relative "./schema/payloads/customer_address_delete.rb"
require_relative "./schema/payloads/customer_address_create.rb"
require_relative "./schema/payloads/customer_activate.rb"
require_relative "./schema/payloads/customer_access_token_renew.rb"
require_relative "./schema/payloads/customer_access_token_delete.rb"
require_relative "./schema/payloads/customer_access_token_create.rb"
require_relative "./schema/payloads/checkout_shipping_line_update.rb"
require_relative "./schema/payloads/checkout_line_items_update.rb"
require_relative "./schema/payloads/checkout_line_items_remove.rb"
require_relative "./schema/payloads/checkout_line_items_add.rb"
require_relative "./schema/payloads/checkout_gift_cards_append.rb"
require_relative "./schema/payloads/checkout_discount_code_remove.rb"
require_relative "./schema/payloads/checkout_create.rb"
require_relative "./schema/payloads/checkout_complete_free.rb"
require_relative "./schema/payloads/checkout_customer_associate_v2.rb"
require_relative "./schema/payloads/checkout_complete_with_tokenized_payment_v2.rb"
require_relative "./schema/payloads/checkout_complete_with_credit_card_v2.rb"
require_relative "./schema/payloads/checkout_attributes_update_v2.rb"
require_relative "./schema/payloads/checkout_shipping_address_update.rb"
require_relative "./schema/payloads/checkout_gift_card_remove.rb"
require_relative "./schema/payloads/checkout_gift_card_apply.rb"
require_relative "./schema/payloads/checkout_email_update.rb"
require_relative "./schema/payloads/checkout_discount_code_apply.rb"
require_relative "./schema/payloads/checkout_customer_disassociate.rb"
require_relative "./schema/payloads/checkout_customer_associate.rb"
require_relative "./schema/payloads/checkout_complete_with_tokenized_payment.rb"

require_relative "./schema/types/query_root.rb"
require_relative "./schema/types/mutation.rb"
require_relative "./schema/schema.rb"