module Spree::GraphQL::Types::ProductPriceRange


  # The highest variant's price.
  # Returns: Types::MoneyV2, null: false
  def max_variant_price()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The lowest variant's price.
  # Returns: Types::MoneyV2, null: false
  def min_variant_price()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The price range of the product.
  # Returns: Types::MoneyV2, null: false
  def product_price_range()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

