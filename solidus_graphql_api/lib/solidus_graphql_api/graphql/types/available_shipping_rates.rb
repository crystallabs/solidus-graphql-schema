module Spree::GraphQL::Types::AvailableShippingRates


  # Field: ready: Whether or not the shipping rates are ready. The `shippingRates` field is `null` when this value is `false`. This field should be polled until its value becomes `true`. 
  # Args: 
  # Returns: Types::Boolean!
  def ready()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: shippingRates: The fetched shipping rates. `null` until the `ready` field is `true`.
  # Args: 
  # Returns: [Types::ShippingRate!]
  def shipping_rates()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

