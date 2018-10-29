module Spree::GraphQL::Types::ProductVariant
  include ::Spree::GraphQL::Interfaces::Node

  # Field: availableForSale: Indicates if the product variant is available for sale.
  # Args: 
  # Returns: Types::Boolean!
  def available_for_sale()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: compareAtPrice: The compare at price of the variant. This can be used to mark a variant as on sale, when `compareAtPrice` is higher than `price`.
  # Args: 
  # Returns: Types::Money
  def compare_at_price()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: id: Globally unique identifier.
  # Args: 
  # Returns: Types::ID!
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: image: Image associated with the product variant. This field falls back to the product image if no image is available.
  # Args: max_width : Types::Int, max_height : Types::Int, crop : Types::CropRegion, scale : Types::Int = 1
  # Returns: Types::Image
  def image(max_width:, max_height:, crop:, scale:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: price: The product variant’s price.
  # Args: 
  # Returns: Types::Money!
  def price()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: product: The product object that the product variant belongs to.
  # Args: 
  # Returns: Types::Product!
  def product()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: selectedOptions: List of product options applied to the variant.
  # Args: 
  # Returns: [Types::SelectedOption!]!
  def selected_options()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: sku: The SKU (stock keeping unit) associated with the variant.
  # Args: 
  # Returns: Types::String
  def sku()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: title: The product variant’s title.
  # Args: 
  # Returns: Types::String!
  def title()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: weight: The weight of the product variant in the unit system specified with `weight_unit`.
  # Args: 
  # Returns: Types::Float
  def weight()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: weightUnit: Unit of measurement for weight.
  # Args: 
  # Returns: Types::WeightUnit!
  def weight_unit()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

