module Spree::GraphQL::Types::FulfillmentLineItem


  # The associated order's line item.
  # Returns: Types::OrderLineItem, null: false
  def line_item()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The amount fulfilled in this fulfillment.
  # Returns: ::GraphQL::Types::Int, null: false
  def quantity()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Represents a single line item in a fulfillment. There is at most one fulfillment line item for each order line item.
  # Returns: ::GraphQL::Types::Int, null: false
  def fulfillment_line_item()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

