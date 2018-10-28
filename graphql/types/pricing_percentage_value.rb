module Spree::GraphQL::Types::PricingPercentageValue


  # The percentage value of the object.
  # Returns: ::GraphQL::Types::Float, null: false
  def percentage()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The value of the percentage pricing object.
  # Returns: ::GraphQL::Types::Float, null: false
  def pricing_percentage_value()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

