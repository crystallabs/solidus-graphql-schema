module Spree::GraphQL::Types::CheckoutLineItem
  include ::Spree::GraphQL::Interfaces::Node

  # Extra information in the form of an array of Key-Value pairs about the line item.
  # Returns: [Types::Attribute], null: false
  def custom_attributes()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The discounts that have been allocated onto the checkout line item by discount applications.
  # Returns: [Types::DiscountAllocation], null: false
  def discount_allocations()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Globally unique identifier.
  # Returns: ::GraphQL::Types::ID, null: false
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The quantity of the line item.
  # Returns: ::GraphQL::Types::Int, null: false
  def quantity()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Title of the line item. Defaults to the product's title.
  # Returns: ::GraphQL::Types::String, null: false
  def title()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Product variant of the line item.
  # Returns: Types::ProductVariant, null: true
  def variant()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # A single line item in the checkout, grouped by variant and attributes.
  # Returns: Types::ProductVariant, null: true
  def checkout_line_item()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

