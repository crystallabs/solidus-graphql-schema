module Spree::GraphQL::Types::ShippingRate
  # @graphql handle Human-readable unique identifier for this shipping rate.
  # @return [Types::String!]
  def handle()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql price Price of this shipping rate.
  # @return [Types::Money!]
  def price()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql title Title of this shipping rate.
  # @return [Types::String!]
  def title()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

