module Spree::GraphQL::Types::AvailableShippingRates


  # Whether or not the shipping rates are ready. The `shippingRates` field is `null` when this value is `false`. This field should be polled until its value becomes `true`. 
  # Returns: ::GraphQL::Types::Boolean, null: false
  def ready()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The fetched shipping rates. `null` until the `ready` field is `true`.
  # Returns: [Types::ShippingRate], null: true
  def shipping_rates()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # A collection of available shipping rates for a checkout.
  # Returns: [Types::ShippingRate], null: true
  def available_shipping_rates()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

