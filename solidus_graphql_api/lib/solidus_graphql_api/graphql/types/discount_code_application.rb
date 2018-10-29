module Spree::GraphQL::Types::DiscountCodeApplication
  include ::Spree::GraphQL::Interfaces::DiscountApplication

  # @graphql allocationMethod The method by which the discount's value is allocated to its entitled items.
  # @return [Types::DiscountApplicationAllocationMethod!]
  def allocation_method()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql applicable Specifies whether the discount code was applied successfully.
  # @return [Types::Boolean!]
  def applicable()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql code The string identifying the discount code that was used at the time of application.
  # @return [Types::String!]
  def code()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql targetSelection Which lines of targetType that the discount is allocated over.
  # @return [Types::DiscountApplicationTargetSelection!]
  def target_selection()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql targetType The type of line that the discount is applicable towards.
  # @return [Types::DiscountApplicationTargetType!]
  def target_type()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql value The value of the discount application.
  # @return [Types::PricingValue!]
  def value()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

