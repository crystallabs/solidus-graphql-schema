module Spree::GraphQL::Types::Fulfillment


  # @graphql fulfillmentLineItems List of the fulfillment's line items.
  # @param reverse [Types::Boolean] (false) Reverse the order of the underlying list.
  # @return [Types::FulfillmentLineItem.connection_type!]
  def fulfillment_line_items(reverse:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql trackingCompany The name of the tracking company.
  # @return [Types::String]
  def tracking_company()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql trackingInfo Tracking information associated with the fulfillment, such as the tracking number and tracking URL. 
  # @param first [Types::Int] Truncate the array result to this size.
  # @return [[Types::FulfillmentTrackingInfo!]!]
  def tracking_info(first:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

