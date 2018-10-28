module Spree::GraphQL::Types::FulfillmentTrackingInfo


  # Field: number: The tracking number of the fulfillment.
  # Args: 
  # Returns: ::GraphQL::Types::String, null: true
  def number()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: url: The URL to track the fulfillment.
  # Args: 
  # Returns: Types::URL, null: true
  def url()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

