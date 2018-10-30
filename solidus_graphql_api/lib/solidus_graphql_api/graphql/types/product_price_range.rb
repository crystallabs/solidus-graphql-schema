module Spree::GraphQL::Types::ProductPriceRange
  # @graphql maxVariantPrice The highest variant's price.
  # @return [Types::MoneyV2!]
  def max_variant_price()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql minVariantPrice The lowest variant's price.
  # @return [Types::MoneyV2!]
  def min_variant_price()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end
