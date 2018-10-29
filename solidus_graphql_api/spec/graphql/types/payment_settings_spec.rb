require 'spec_helper'

describe 'Types' do
  describe 'PaymentSettings' do
    #let!(:payment_settings) {create(:payment_settings)}

    # Field: acceptedCardBrands: List of the card brands which the shop accepts.
    # Args: 
    # Returns: [Types::CardBrand!]!
    #it 'accepted_card_brands' do
    #  query = <<-GRAPHQL
    #    { payment_settings { acceptedCardBrands() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'payment_settings')
    #  expect(result['acceptedCardBrands']).to eq payment_settings.accepted_card_brands
    #end

    # Field: cardVaultUrl: The url pointing to the endpoint to vault credit cards.
    # Args: 
    # Returns: Types::URL!
    #it 'card_vault_url' do
    #  query = <<-GRAPHQL
    #    { payment_settings { cardVaultUrl() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'payment_settings')
    #  expect(result['cardVaultUrl']).to eq payment_settings.card_vault_url
    #end

    # Field: countryCode: The country where the shop is located.
    # Args: 
    # Returns: Types::CountryCode!
    #it 'country_code' do
    #  query = <<-GRAPHQL
    #    { payment_settings { countryCode() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'payment_settings')
    #  expect(result['countryCode']).to eq payment_settings.country_code
    #end

    # Field: currencyCode: The three-letter code for the currency that the shop accepts.
    # Args: 
    # Returns: Types::CurrencyCode!
    #it 'currency_code' do
    #  query = <<-GRAPHQL
    #    { payment_settings { currencyCode() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'payment_settings')
    #  expect(result['currencyCode']).to eq payment_settings.currency_code
    #end

    # Field: solidusPaymentsAccountId: The shop’s Solidus Payments account id.
    # Args: 
    # Returns: Types::String
    #it 'solidus_payments_account_id' do
    #  query = <<-GRAPHQL
    #    { payment_settings { solidusPaymentsAccountId() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'payment_settings')
    #  expect(result['solidusPaymentsAccountId']).to eq payment_settings.solidus_payments_account_id
    #end

    # Field: supportedDigitalWallets: List of the digital wallets which the shop supports.
    # Args: 
    # Returns: [Types::DigitalWallet!]!
    #it 'supported_digital_wallets' do
    #  query = <<-GRAPHQL
    #    { payment_settings { supportedDigitalWallets() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'payment_settings')
    #  expect(result['supportedDigitalWallets']).to eq payment_settings.supported_digital_wallets
    #end

  end
end

