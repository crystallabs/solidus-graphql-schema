module Spree::GraphQL::Types::PricingPercentageValue
  # @graphql percentage The percentage value of the object.
  # @return [Types::Float!]
  def percentage()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end
