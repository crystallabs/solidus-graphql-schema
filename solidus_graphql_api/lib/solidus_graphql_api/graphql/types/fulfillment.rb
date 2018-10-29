module Spree::GraphQL::Types::Fulfillment


  # Field: fulfillmentLineItems: List of the fulfillment's line items.
  # Args: reverse : Types::Boolean = false
  # Returns: Types::FulfillmentLineItem.connection_type!
  def fulfillment_line_items(reverse:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: trackingCompany: The name of the tracking company.
  # Args: 
  # Returns: Types::String
  def tracking_company()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: trackingInfo: Tracking information associated with the fulfillment, such as the tracking number and tracking URL. 
  # Args: first : Types::Int
  # Returns: [Types::FulfillmentTrackingInfo!]!
  def tracking_info(first:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

