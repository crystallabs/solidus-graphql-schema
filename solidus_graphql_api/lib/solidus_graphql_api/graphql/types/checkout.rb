module Spree::GraphQL::Types::Checkout
  include ::Spree::GraphQL::Interfaces::Node

  # Field: appliedGiftCards
  # Args: 
  # Returns: [Types::AppliedGiftCard!]!
  def applied_gift_cards()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: availableShippingRates: The available shipping rates for this Checkout. Should only be used when checkout `requiresShipping` is `true` and the shipping address is valid. 
  # Args: 
  # Returns: Types::AvailableShippingRates
  def available_shipping_rates()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: completedAt: The date and time when the checkout was completed.
  # Args: 
  # Returns: Types::DateTime
  def completed_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: createdAt: The date and time when the checkout was created.
  # Args: 
  # Returns: Types::DateTime!
  def created_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: currencyCode: The currency code for the Checkout.
  # Args: 
  # Returns: Types::CurrencyCode!
  def currency_code()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: customAttributes: A list of extra information that is added to the checkout.
  # Args: 
  # Returns: [Types::Attribute!]!
  def custom_attributes()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: discountApplications: Discounts that have been applied on the checkout.
  # Args: reverse : Types::Boolean = false
  # Returns: Interfaces::DiscountApplication.connection_type!
  def discount_applications(reverse:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: email: The email attached to this checkout.
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

  # Field: lineItems: A list of line item objects, each one containing information about an item in the checkout.
  # Args: reverse : Types::Boolean = false
  # Returns: Types::CheckoutLineItem.connection_type!
  def line_items(reverse:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: note
  # Args: 
  # Returns: Types::String
  def note()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: order: The resulting order from a paid checkout.
  # Args: 
  # Returns: Types::Order
  def order()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: orderStatusUrl: The Order Status Page for this Checkout, null when checkout is not completed.
  # Args: 
  # Returns: Types::URL
  def order_status_url()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: paymentDue: The amount left to be paid. This is equal to the cost of the line items, taxes and shipping minus discounts and gift cards.
  # Args: 
  # Returns: Types::Money!
  def payment_due()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: ready: Whether or not the Checkout is ready and can be completed. Checkouts may have asynchronous operations that can take time to finish. If you want to complete a checkout or ensure all the fields are populated and up to date, polling is required until the value is true. 
  # Args: 
  # Returns: Types::Boolean!
  def ready()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: requiresShipping: States whether or not the fulfillment requires shipping.
  # Args: 
  # Returns: Types::Boolean!
  def requires_shipping()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: shippingAddress: The shipping address to where the line items will be shipped.
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

  # Field: shippingLine: Once a shipping rate is selected by the customer it is transitioned to a `shipping_line` object.
  # Args: 
  # Returns: Types::ShippingRate
  def shipping_line()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: subtotalPrice: Price of the checkout before shipping and taxes.
  # Args: 
  # Returns: Types::Money!
  def subtotal_price()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: taxExempt: Specifies if the Checkout is tax exempt.
  # Args: 
  # Returns: Types::Boolean!
  def tax_exempt()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: taxesIncluded: Specifies if taxes are included in the line item and shipping line prices.
  # Args: 
  # Returns: Types::Boolean!
  def taxes_included()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: totalPrice: The sum of all the prices of all the items in the checkout, taxes and discounts included.
  # Args: 
  # Returns: Types::Money!
  def total_price()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: totalTax: The sum of all the taxes applied to the line items and shipping lines in the checkout.
  # Args: 
  # Returns: Types::Money!
  def total_tax()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: updatedAt: The date and time when the checkout was last updated.
  # Args: 
  # Returns: Types::DateTime!
  def updated_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: webUrl: The url pointing to the checkout accessible from the web.
  # Args: 
  # Returns: Types::URL!
  def web_url()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

