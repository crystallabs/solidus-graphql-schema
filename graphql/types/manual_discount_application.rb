module Spree::GraphQL::Types::ManualDiscountApplication
  include ::Spree::GraphQL::Interfaces::DiscountApplication

  # The method by which the discount's value is allocated to its entitled items.
  # Returns: Types::DiscountApplicationAllocationMethod, null: false
  def allocation_method()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The description of the application.
  # Returns: ::GraphQL::Types::String, null: true
  def description()
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

  # The title of the application.
  # Returns: ::GraphQL::Types::String, null: false
  def title()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The value of the discount application.
  # Returns: Types::PricingValue, null: false
  def value()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Manual discount applications capture the intentions of a discount that was manually created. 
  # Returns: Types::PricingValue, null: false
  def manual_discount_application()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

