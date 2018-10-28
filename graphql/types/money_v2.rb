module Spree::GraphQL::Types::MoneyV2


  # Field: amount: Decimal money amount.
  # Returns: Types::Decimal, null: false
  def amount()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: currencyCode: Currency of the money.
  # Returns: Types::CurrencyCode, null: false
  def currency_code()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

