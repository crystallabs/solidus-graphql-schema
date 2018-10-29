module Spree::GraphQL::Types::MoneyV2


  # @graphql amount Decimal money amount.
  # @return [Types::Decimal!]
  def amount()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql currencyCode Currency of the money.
  # @return [Types::CurrencyCode!]
  def currency_code()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

