module Spree::GraphQL::Types::ProductPriceRange


  # Field: maxVariantPrice: The highest variant's price.
  # Returns: Types::MoneyV2, null: false
  def max_variant_price()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: minVariantPrice: The lowest variant's price.
  # Returns: Types::MoneyV2, null: false
  def min_variant_price()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

