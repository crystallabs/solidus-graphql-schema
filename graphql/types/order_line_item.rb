module Spree::GraphQL::Types::OrderLineItem


  # Field: customAttributes: List of custom attributes associated to the line item.
  # Args: 
  # Returns: [Types::Attribute], null: false
  def custom_attributes()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: discountAllocations: The discounts that have been allocated onto the order line item by discount applications.
  # Args: 
  # Returns: [Types::DiscountAllocation], null: false
  def discount_allocations()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: quantity: The number of products variants associated to the line item.
  # Args: 
  # Returns: ::GraphQL::Types::Int, null: false
  def quantity()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: title: The title of the product combined with title of the variant.
  # Args: 
  # Returns: ::GraphQL::Types::String, null: false
  def title()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: variant: The product variant object associated to the line item.
  # Args: 
  # Returns: Types::ProductVariant, null: true
  def variant()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

