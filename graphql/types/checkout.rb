module Spree::GraphQL::Types::Checkout
  include ::Spree::GraphQL::Interfaces::Node

  # 
  # Returns: [Types::AppliedGiftCard], null: false
  def applied_gift_cards()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The available shipping rates for this Checkout. Should only be used when checkout `requiresShipping` is `true` and the shipping address is valid. 
  # Returns: Types::AvailableShippingRates, null: true
  def available_shipping_rates()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The date and time when the checkout was completed.
  # Returns: Types::DateTime, null: true
  def completed_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The date and time when the checkout was created.
  # Returns: Types::DateTime, null: false
  def created_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The currency code for the Checkout.
  # Returns: Types::CurrencyCode, null: false
  def currency_code()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # A list of extra information that is added to the checkout.
  # Returns: [Types::Attribute], null: false
  def custom_attributes()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Discounts that have been applied on the checkout.
  # Defaults: reverse = false
  # Returns: Interfaces::DiscountApplication.connection_type, null: false
  def discount_applications(reverse:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The email attached to this checkout.
  # Returns: ::GraphQL::Types::String, null: true
  def email()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Globally unique identifier.
  # Returns: ::GraphQL::Types::ID, null: false
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # A list of line item objects, each one containing information about an item in the checkout.
  # Defaults: reverse = false
  # Returns: Types::CheckoutLineItem.connection_type, null: false
  def line_items(reverse:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # 
  # Returns: ::GraphQL::Types::String, null: true
  def note()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The resulting order from a paid checkout.
  # Returns: Types::Order, null: true
  def order()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The Order Status Page for this Checkout, null when checkout is not completed.
  # Returns: Types::URL, null: true
  def order_status_url()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The amount left to be paid. This is equal to the cost of the line items, taxes and shipping minus discounts and gift cards.
  # Returns: Types::Money, null: false
  def payment_due()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Whether or not the Checkout is ready and can be completed. Checkouts may have asynchronous operations that can take time to finish. If you want to complete a checkout or ensure all the fields are populated and up to date, polling is required until the value is true. 
  # Returns: ::GraphQL::Types::Boolean, null: false
  def ready()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # States whether or not the fulfillment requires shipping.
  # Returns: ::GraphQL::Types::Boolean, null: false
  def requires_shipping()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The shipping address to where the line items will be shipped.
  # Returns: Types::MailingAddress, null: true
  def shipping_address()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The discounts that have been allocated onto the shipping line by discount applications. 
  # Returns: [Types::DiscountAllocation], null: false
  def shipping_discount_allocations()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Once a shipping rate is selected by the customer it is transitioned to a `shipping_line` object.
  # Returns: Types::ShippingRate, null: true
  def shipping_line()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Price of the checkout before shipping and taxes.
  # Returns: Types::Money, null: false
  def subtotal_price()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Specifies if the Checkout is tax exempt.
  # Returns: ::GraphQL::Types::Boolean, null: false
  def tax_exempt()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Specifies if taxes are included in the line item and shipping line prices.
  # Returns: ::GraphQL::Types::Boolean, null: false
  def taxes_included()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The sum of all the prices of all the items in the checkout, taxes and discounts included.
  # Returns: Types::Money, null: false
  def total_price()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The sum of all the taxes applied to the line items and shipping lines in the checkout.
  # Returns: Types::Money, null: false
  def total_tax()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The date and time when the checkout was last updated.
  # Returns: Types::DateTime, null: false
  def updated_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The url pointing to the checkout accessible from the web.
  # Returns: Types::URL, null: false
  def web_url()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # A container for all the information required to checkout items and pay.
  # Returns: Types::URL, null: false
  def checkout()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

