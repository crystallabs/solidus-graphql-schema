module Spree::GraphQL::Types::DiscountCodeApplication
  include ::Spree::GraphQL::Interfaces::DiscountApplication

  # The method by which the discount's value is allocated to its entitled items.
  # Returns: Types::DiscountApplicationAllocationMethod, null: false
  def allocation_method()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Specifies whether the discount code was applied successfully.
  # Returns: ::GraphQL::Types::Boolean, null: false
  def applicable()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The string identifying the discount code that was used at the time of application.
  # Returns: ::GraphQL::Types::String, null: false
  def code()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Which lines of targetType that the discount is allocated over.
  # Returns: Types::DiscountApplicationTargetSelection, null: false
  def target_selection()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The type of line that the discount is applicable towards.
  # Returns: Types::DiscountApplicationTargetType, null: false
  def target_type()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The value of the discount application.
  # Returns: Types::PricingValue, null: false
  def value()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Discount code applications capture the intentions of a discount code at the time that it is applied. 
  # Returns: Types::PricingValue, null: false
  def discount_code_application()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

