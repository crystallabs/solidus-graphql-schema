require 'spec_helper'

describe 'Types' do
  describe 'MoneyV2' do
    #let!(:money_v2) {create(:money_v2)}

    # Field: amount: Decimal money amount.
    # Args: 
    # Returns: Types::Decimal!
    #it 'amount' do
    #  query = <<-GRAPHQL
    #    { money_v2 { amount() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'money_v2')
    #  expect(result['amount']).to eq money_v2.amount
    #end

    # Field: currencyCode: Currency of the money.
    # Args: 
    # Returns: Types::CurrencyCode!
    #it 'currency_code' do
    #  query = <<-GRAPHQL
    #    { money_v2 { currencyCode() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'money_v2')
    #  expect(result['currencyCode']).to eq money_v2.currency_code
    #end

  end
end

