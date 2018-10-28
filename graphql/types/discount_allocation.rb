module Spree::GraphQL::Types::DiscountAllocation


  # Field: allocatedAmount: Amount of discount allocated.
  # Returns: Types::MoneyV2, null: false
  def allocated_amount()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: discountApplication: The discount this allocated amount originated from.
  # Returns: Interfaces::DiscountApplication, null: false
  def discount_application()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

