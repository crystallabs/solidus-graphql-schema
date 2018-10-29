module Spree::GraphQL::Types::PaymentSettings


  # @graphql acceptedCardBrands List of the card brands which the shop accepts.
  # @return [[Types::CardBrand!]!]
  def accepted_card_brands()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql cardVaultUrl The url pointing to the endpoint to vault credit cards.
  # @return [Types::URL!]
  def card_vault_url()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql countryCode The country where the shop is located.
  # @return [Types::CountryCode!]
  def country_code()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql currencyCode The three-letter code for the currency that the shop accepts.
  # @return [Types::CurrencyCode!]
  def currency_code()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql solidusPaymentsAccountId The shop’s Solidus Payments account id.
  # @return [Types::String]
  def solidus_payments_account_id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql supportedDigitalWallets List of the digital wallets which the shop supports.
  # @return [[Types::DigitalWallet!]!]
  def supported_digital_wallets()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

