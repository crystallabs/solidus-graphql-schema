module Spree::GraphQL::Types::Checkout
  include ::Spree::GraphQL::Interfaces::Node
  # @graphql appliedGiftCards
  # @return [[Types::AppliedGiftCard!]!]
  def applied_gift_cards()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql availableShippingRates The available shipping rates for this Checkout. Should only be used when checkout `requiresShipping` is `true` and the shipping address is valid. 
  # @return [Types::AvailableShippingRates]
  def available_shipping_rates()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql completedAt The date and time when the checkout was completed.
  # @return [Types::DateTime]
  def completed_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql createdAt The date and time when the checkout was created.
  # @return [Types::DateTime!]
  def created_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql currencyCode The currency code for the Checkout.
  # @return [Types::CurrencyCode!]
  def currency_code()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql customAttributes A list of extra information that is added to the checkout.
  # @return [[Types::Attribute!]!]
  def custom_attributes()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql discountApplications Discounts that have been applied on the checkout.
  # @param reverse [Types::Boolean] (false) Reverse the order of the underlying list.
  # @return [Interfaces::DiscountApplication.connection_type!]
  def discount_applications(reverse:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql email The email attached to this checkout.
  # @return [Types::String]
  def email()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql id Globally unique identifier.
  # @return [Types::ID!]
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql lineItems A list of line item objects, each one containing information about an item in the checkout.
  # @param reverse [Types::Boolean] (false) Reverse the order of the underlying list.
  # @return [Types::CheckoutLineItem.connection_type!]
  def line_items(reverse:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql note
  # @return [Types::String]
  def note()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql order The resulting order from a paid checkout.
  # @return [Types::Order]
  def order()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql orderStatusUrl The Order Status Page for this Checkout, null when checkout is not completed.
  # @return [Types::URL]
  def order_status_url()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql paymentDue The amount left to be paid. This is equal to the cost of the line items, taxes and shipping minus discounts and gift cards.
  # @return [Types::Money!]
  def payment_due()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql ready Whether or not the Checkout is ready and can be completed. Checkouts may have asynchronous operations that can take time to finish. If you want to complete a checkout or ensure all the fields are populated and up to date, polling is required until the value is true. 
  # @return [Types::Boolean!]
  def ready()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql requiresShipping States whether or not the fulfillment requires shipping.
  # @return [Types::Boolean!]
  def requires_shipping()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql shippingAddress The shipping address to where the line items will be shipped.
  # @return [Types::MailingAddress]
  def shipping_address()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql shippingDiscountAllocations The discounts that have been allocated onto the shipping line by discount applications. 
  # @return [[Types::DiscountAllocation!]!]
  def shipping_discount_allocations()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql shippingLine Once a shipping rate is selected by the customer it is transitioned to a `shipping_line` object.
  # @return [Types::ShippingRate]
  def shipping_line()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql subtotalPrice Price of the checkout before shipping and taxes.
  # @return [Types::Money!]
  def subtotal_price()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql taxExempt Specifies if the Checkout is tax exempt.
  # @return [Types::Boolean!]
  def tax_exempt()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql taxesIncluded Specifies if taxes are included in the line item and shipping line prices.
  # @return [Types::Boolean!]
  def taxes_included()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql totalPrice The sum of all the prices of all the items in the checkout, taxes and discounts included.
  # @return [Types::Money!]
  def total_price()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql totalTax The sum of all the taxes applied to the line items and shipping lines in the checkout.
  # @return [Types::Money!]
  def total_tax()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql updatedAt The date and time when the checkout was last updated.
  # @return [Types::DateTime!]
  def updated_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql webUrl The url pointing to the checkout accessible from the web.
  # @return [Types::URL!]
  def web_url()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

