module Spree::GraphQL::Types::ShippingRate


  # Field: handle: Human-readable unique identifier for this shipping rate.
  # Args: 
  # Returns: Types::String!
  def handle()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: price: Price of this shipping rate.
  # Args: 
  # Returns: Types::Money!
  def price()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: title: Title of this shipping rate.
  # Args: 
  # Returns: Types::String!
  def title()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

