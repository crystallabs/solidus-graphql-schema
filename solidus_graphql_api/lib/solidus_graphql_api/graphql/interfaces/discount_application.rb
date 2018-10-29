module Spree::GraphQL::Interfaces::DiscountApplication


  # Field: allocationMethod: The method by which the discount's value is allocated to its entitled items.
  # Args: 
  # Returns: Types::DiscountApplicationAllocationMethod!
  def allocation_method()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: targetSelection: Which lines of targetType that the discount is allocated over.
  # Args: 
  # Returns: Types::DiscountApplicationTargetSelection!
  def target_selection()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: targetType: The type of line that the discount is applicable towards.
  # Args: 
  # Returns: Types::DiscountApplicationTargetType!
  def target_type()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: value: The value of the discount application.
  # Args: 
  # Returns: Types::PricingValue!
  def value()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

