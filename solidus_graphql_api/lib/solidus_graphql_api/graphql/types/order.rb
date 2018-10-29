module Spree::GraphQL::Types::Order
  include ::Spree::GraphQL::Interfaces::Node

  # @graphql currencyCode The code of the currency used for the payment.
  # @return [Types::CurrencyCode!]
  def currency_code()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql customerLocale The locale code in which this specific order happened.
  # @return [Types::String]
  def customer_locale()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql customerUrl The unique URL that the customer can use to access the order.
  # @return [Types::URL]
  def customer_url()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql discountApplications Discounts that have been applied on the order.
  # @param reverse [Types::Boolean] (false) Reverse the order of the underlying list.
  # @return [Interfaces::DiscountApplication.connection_type!]
  def discount_applications(reverse:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql email The customer's email address.
  # @return [Types::String]
  def email()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql id Globally unique identifier.
  # @return [Types::ID!]
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql lineItems List of the order’s line items.
  # @param reverse [Types::Boolean] (false) Reverse the order of the underlying list.
  # @return [Types::OrderLineItem.connection_type!]
  def line_items(reverse:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql name Unique identifier for the order that appears on the order. For example, _#1000_ or _Store1001. 
  # @return [Types::String!]
  def name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql orderNumber A unique numeric identifier for the order for use by shop owner and customer.
  # @return [Types::Int!]
  def order_number()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql phone The customer's phone number.
  # @return [Types::String]
  def phone()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql processedAt The date and time when the order was imported. This value can be set to dates in the past when importing from other systems. If no value is provided, it will be auto-generated based on current date and time. 
  # @return [Types::DateTime!]
  def processed_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql shippingAddress The address to where the order will be shipped.
  # @return [Types::MailingAddress]
  def shipping_address()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql shippingDiscountAllocations The discounts that have been allocated onto the shipping line by discount applications. 
  # @return [[Types::DiscountAllocation!]!]
  def shipping_discount_allocations()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql statusUrl The unique URL for the order's status page.
  # @return [Types::URL!]
  def status_url()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql subtotalPrice Price of the order before shipping and taxes.
  # @return [Types::Money]
  def subtotal_price()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql successfulFulfillments List of the order’s successful fulfillments.
  # @param first [Types::Int] Truncate the array result to this size.
  # @return [[Types::Fulfillment!]]
  def successful_fulfillments(first:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql totalPrice The sum of all the prices of all the items in the order, taxes and discounts included (must be positive).
  # @return [Types::Money!]
  def total_price()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql totalRefunded The total amount that has been refunded.
  # @return [Types::Money!]
  def total_refunded()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql totalShippingPrice The total cost of shipping.
  # @return [Types::Money!]
  def total_shipping_price()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql totalTax The total cost of taxes.
  # @return [Types::Money]
  def total_tax()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

