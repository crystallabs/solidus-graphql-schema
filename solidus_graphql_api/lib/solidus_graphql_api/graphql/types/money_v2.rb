module Spree::GraphQL::Types::MoneyV2


  # Field: amount: Decimal money amount.
  # Args: 
  # Returns: Types::Decimal!
  def amount()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: currencyCode: Currency of the money.
  # Args: 
  # Returns: Types::CurrencyCode!
  def currency_code()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

