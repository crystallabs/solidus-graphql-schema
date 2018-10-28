module Spree::GraphQL::Types::DiscountAllocation


  # Amount of discount allocated.
  # Returns: Types::MoneyV2, null: false
  def allocated_amount()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The discount this allocated amount originated from.
  # Returns: Interfaces::DiscountApplication, null: false
  def discount_application()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # An amount discounting the line that has been allocated by a discount. 
  # Returns: Interfaces::DiscountApplication, null: false
  def discount_allocation()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

