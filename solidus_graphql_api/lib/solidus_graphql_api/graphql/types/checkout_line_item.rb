module Spree::GraphQL::Types::CheckoutLineItem
  include ::Spree::GraphQL::Interfaces::Node

  # Field: customAttributes: Extra information in the form of an array of Key-Value pairs about the line item.
  # Args: 
  # Returns: [Types::Attribute!]!
  def custom_attributes()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: discountAllocations: The discounts that have been allocated onto the checkout line item by discount applications.
  # Args: 
  # Returns: [Types::DiscountAllocation!]!
  def discount_allocations()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: id: Globally unique identifier.
  # Args: 
  # Returns: Types::ID!
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: quantity: The quantity of the line item.
  # Args: 
  # Returns: Types::Int!
  def quantity()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: title: Title of the line item. Defaults to the product's title.
  # Args: 
  # Returns: Types::String!
  def title()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: variant: Product variant of the line item.
  # Args: 
  # Returns: Types::ProductVariant
  def variant()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

