module Spree::GraphQL::Types::PaymentSettings


  # List of the card brands which the shop accepts.
  # Returns: [Types::CardBrand], null: false
  def accepted_card_brands()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The url pointing to the endpoint to vault credit cards.
  # Returns: Types::URL, null: false
  def card_vault_url()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The country where the shop is located.
  # Returns: Types::CountryCode, null: false
  def country_code()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The three-letter code for the currency that the shop accepts.
  # Returns: Types::CurrencyCode, null: false
  def currency_code()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The shop’s Store Payments account id.
  # Returns: ::GraphQL::Types::String, null: true
  def store_payments_account_id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # List of the digital wallets which the shop supports.
  # Returns: [Types::DigitalWallet], null: false
  def supported_digital_wallets()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Settings related to payments.
  # Returns: [Types::DigitalWallet], null: false
  def payment_settings()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

