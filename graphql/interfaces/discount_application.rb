module Spree::GraphQL::Interfaces::DiscountApplication


  # Field: allocationMethod: The method by which the discount's value is allocated to its entitled items.
  # Returns: Types::DiscountApplicationAllocationMethod, null: false
  def allocation_method()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: targetSelection: Which lines of targetType that the discount is allocated over.
  # Returns: Types::DiscountApplicationTargetSelection, null: false
  def target_selection()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: targetType: The type of line that the discount is applicable towards.
  # Returns: Types::DiscountApplicationTargetType, null: false
  def target_type()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: value: The value of the discount application.
  # Returns: Types::PricingValue, null: false
  def value()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

