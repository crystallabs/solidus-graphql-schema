module Spree::GraphQL::Types::Order
  include ::Spree::GraphQL::Interfaces::Node

  # Field: currencyCode: The code of the currency used for the payment.
  # Args: 
  # Returns: Types::CurrencyCode!
  def currency_code()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: customerLocale: The locale code in which this specific order happened.
  # Args: 
  # Returns: Types::String
  def customer_locale()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: customerUrl: The unique URL that the customer can use to access the order.
  # Args: 
  # Returns: Types::URL
  def customer_url()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: discountApplications: Discounts that have been applied on the order.
  # Args: reverse : Types::Boolean = false
  # Returns: Interfaces::DiscountApplication.connection_type!
  def discount_applications(reverse:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: email: The customer's email address.
  # Args: 
  # Returns: Types::String
  def email()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: id: Globally unique identifier.
  # Args: 
  # Returns: Types::ID!
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: lineItems: List of the order’s line items.
  # Args: reverse : Types::Boolean = false
  # Returns: Types::OrderLineItem.connection_type!
  def line_items(reverse:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: name: Unique identifier for the order that appears on the order. For example, _#1000_ or _Store1001. 
  # Args: 
  # Returns: Types::String!
  def name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: orderNumber: A unique numeric identifier for the order for use by shop owner and customer.
  # Args: 
  # Returns: Types::Int!
  def order_number()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: phone: The customer's phone number.
  # Args: 
  # Returns: Types::String
  def phone()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: processedAt: The date and time when the order was imported. This value can be set to dates in the past when importing from other systems. If no value is provided, it will be auto-generated based on current date and time. 
  # Args: 
  # Returns: Types::DateTime!
  def processed_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: shippingAddress: The address to where the order will be shipped.
  # Args: 
  # Returns: Types::MailingAddress
  def shipping_address()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: shippingDiscountAllocations: The discounts that have been allocated onto the shipping line by discount applications. 
  # Args: 
  # Returns: [Types::DiscountAllocation!]!
  def shipping_discount_allocations()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: statusUrl: The unique URL for the order's status page.
  # Args: 
  # Returns: Types::URL!
  def status_url()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: subtotalPrice: Price of the order before shipping and taxes.
  # Args: 
  # Returns: Types::Money
  def subtotal_price()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: successfulFulfillments: List of the order’s successful fulfillments.
  # Args: first : Types::Int
  # Returns: [Types::Fulfillment!]
  def successful_fulfillments(first:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: totalPrice: The sum of all the prices of all the items in the order, taxes and discounts included (must be positive).
  # Args: 
  # Returns: Types::Money!
  def total_price()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: totalRefunded: The total amount that has been refunded.
  # Args: 
  # Returns: Types::Money!
  def total_refunded()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: totalShippingPrice: The total cost of shipping.
  # Args: 
  # Returns: Types::Money!
  def total_shipping_price()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: totalTax: The total cost of taxes.
  # Args: 
  # Returns: Types::Money
  def total_tax()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

