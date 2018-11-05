# frozen_string_literal: true
module Spree::GraphQL::Types::Fulfillment

  # fulfillmentLineItems: List of the fulfillment's line items.
  # @param first [Types::Int] Returns up to the first `n` elements from the list.
  # @param after [Types::String] Returns the elements that come after the specified cursor.
  # @param last [Types::Int] Returns up to the last `n` elements from the list.
  # @param before [Types::String] Returns the elements that come before the specified cursor.
  # @param reverse [Types::Boolean] (false) Reverse the order of the underlying list.
  # @return [Types::FulfillmentLineItem!]
  def fulfillment_line_items(first:, after:, last:, before:, reverse:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # trackingCompany: The name of the tracking company.
  # @return [Types::String]
  def tracking_company()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # trackingInfo: Tracking information associated with the fulfillment, such as the tracking number and tracking URL.
  # @param first [Types::Int] Truncate the array result to this size.
  # @return [[Types::FulfillmentTrackingInfo!]!]
  def tracking_info(first:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end
end