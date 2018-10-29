module Spree::GraphQL::Types::CheckoutLineItem
  include ::Spree::GraphQL::Interfaces::Node

  # Field: customAttributes: Extra information in the form of an array of Key-Value pairs about the line item.
  # Args: 
  # Returns: [Types::Attribute], null: false
  def custom_attributes()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: discountAllocations: The discounts that have been allocated onto the checkout line item by discount applications.
  # Args: 
  # Returns: [Types::DiscountAllocation], null: false
  def discount_allocations()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: id: Globally unique identifier.
  # Args: 
  # Returns: ::GraphQL::Types::ID, null: false
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: quantity: The quantity of the line item.
  # Args: 
  # Returns: ::GraphQL::Types::Int, null: false
  def quantity()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: title: Title of the line item. Defaults to the product's title.
  # Args: 
  # Returns: ::GraphQL::Types::String, null: false
  def title()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: variant: Product variant of the line item.
  # Args: 
  # Returns: Types::ProductVariant, null: true
  def variant()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

