module Spree::GraphQL::Inputs::Money


  # Specifies the fields for a monetary value with currency.
  # Returns: 
  def money_input(amount:, currency_code:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

