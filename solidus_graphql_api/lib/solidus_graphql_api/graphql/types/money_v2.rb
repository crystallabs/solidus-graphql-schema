module Spree::GraphQL::Types::MoneyV2


  # Field: amount: Decimal money amount.
  # Args: 
  # Returns: Types::Decimal, null: false
  def amount()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: currencyCode: Currency of the money.
  # Args: 
  # Returns: Types::CurrencyCode, null: false
  def currency_code()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

