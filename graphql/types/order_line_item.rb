module Spree::GraphQL::Types::OrderLineItem


  # List of custom attributes associated to the line item.
  # Returns: [Types::Attribute], null: false
  def custom_attributes()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The discounts that have been allocated onto the order line item by discount applications.
  # Returns: [Types::DiscountAllocation], null: false
  def discount_allocations()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The number of products variants associated to the line item.
  # Returns: ::GraphQL::Types::Int, null: false
  def quantity()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The title of the product combined with title of the variant.
  # Returns: ::GraphQL::Types::String, null: false
  def title()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The product variant object associated to the line item.
  # Returns: Types::ProductVariant, null: true
  def variant()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Represents a single line in an order. There is one line item for each distinct product variant.
  # Returns: Types::ProductVariant, null: true
  def order_line_item()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

