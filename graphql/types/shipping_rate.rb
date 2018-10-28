module Spree::GraphQL::Types::ShippingRate


  # Human-readable unique identifier for this shipping rate.
  # Returns: ::GraphQL::Types::String, null: false
  def handle()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Price of this shipping rate.
  # Returns: Types::Money, null: false
  def price()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Title of this shipping rate.
  # Returns: ::GraphQL::Types::String, null: false
  def title()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # A shipping rate to be applied to a checkout.
  # Returns: ::GraphQL::Types::String, null: false
  def shipping_rate()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

