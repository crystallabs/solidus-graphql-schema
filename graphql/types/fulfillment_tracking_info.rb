module Spree::GraphQL::Types::FulfillmentTrackingInfo


  # The tracking number of the fulfillment.
  # Returns: ::GraphQL::Types::String, null: true
  def number()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The URL to track the fulfillment.
  # Returns: Types::URL, null: true
  def url()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Tracking information associated with the fulfillment.
  # Returns: Types::URL, null: true
  def fulfillment_tracking_info()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

