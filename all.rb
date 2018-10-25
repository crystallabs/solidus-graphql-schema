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

require_relative "./schema/types/base_object.rb"
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
require_relative "./schema/inputs/selected_option.rb"
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
