module Spree::GraphQL::Types::Order
  include ::Spree::GraphQL::Interfaces::Node

  # The code of the currency used for the payment.
  # Returns: Types::CurrencyCode, null: false
  def currency_code()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The locale code in which this specific order happened.
  # Returns: ::GraphQL::Types::String, null: true
  def customer_locale()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The unique URL that the customer can use to access the order.
  # Returns: Types::URL, null: true
  def customer_url()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Discounts that have been applied on the order.
  # Defaults: reverse = false
  # Returns: Interfaces::DiscountApplication.connection_type, null: false
  def discount_applications(reverse:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The customer's email address.
  # Returns: ::GraphQL::Types::String, null: true
  def email()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Globally unique identifier.
  # Returns: ::GraphQL::Types::ID, null: false
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # List of the order’s line items.
  # Defaults: reverse = false
  # Returns: Types::OrderLineItem.connection_type, null: false
  def line_items(reverse:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Unique identifier for the order that appears on the order. For example, _#1000_ or _Store1001. 
  # Returns: ::GraphQL::Types::String, null: false
  def name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # A unique numeric identifier for the order for use by shop owner and customer.
  # Returns: ::GraphQL::Types::Int, null: false
  def order_number()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The customer's phone number.
  # Returns: ::GraphQL::Types::String, null: true
  def phone()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The date and time when the order was imported. This value can be set to dates in the past when importing from other systems. If no value is provided, it will be auto-generated based on current date and time. 
  # Returns: Types::DateTime, null: false
  def processed_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The address to where the order will be shipped.
  # Returns: Types::MailingAddress, null: true
  def shipping_address()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The discounts that have been allocated onto the shipping line by discount applications. 
  # Returns: [Types::DiscountAllocation], null: false
  def shipping_discount_allocations()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The unique URL for the order's status page.
  # Returns: Types::URL, null: false
  def status_url()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Price of the order before shipping and taxes.
  # Returns: Types::Money, null: true
  def subtotal_price()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # List of the order’s successful fulfillments.
  # Returns: [Types::Fulfillment], null: true
  def successful_fulfillments(first:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The sum of all the prices of all the items in the order, taxes and discounts included (must be positive).
  # Returns: Types::Money, null: false
  def total_price()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The total amount that has been refunded.
  # Returns: Types::Money, null: false
  def total_refunded()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The total cost of shipping.
  # Returns: Types::Money, null: false
  def total_shipping_price()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The total cost of taxes.
  # Returns: Types::Money, null: true
  def total_tax()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # An order is a customer’s completed request to purchase one or more products from a shop. An order is created when a customer completes the checkout process, during which time they provides an email address, billing address and payment information.
  # Returns: Types::Money, null: true
  def order()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

