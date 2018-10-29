module Spree::GraphQL::Types::OrderLineItem


  # Field: customAttributes: List of custom attributes associated to the line item.
  # Args: 
  # Returns: [Types::Attribute!]!
  def custom_attributes()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: discountAllocations: The discounts that have been allocated onto the order line item by discount applications.
  # Args: 
  # Returns: [Types::DiscountAllocation!]!
  def discount_allocations()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: quantity: The number of products variants associated to the line item.
  # Args: 
  # Returns: Types::Int!
  def quantity()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: title: The title of the product combined with title of the variant.
  # Args: 
  # Returns: Types::String!
  def title()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: variant: The product variant object associated to the line item.
  # Args: 
  # Returns: Types::ProductVariant
  def variant()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

