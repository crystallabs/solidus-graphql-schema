require 'spec_helper'

describe 'Types' do
  describe 'MoneyV2' do
    #let!(:money_v2) {create(:money_v2)}

    # @graphql amount Decimal money amount.
    # @return [Types::Decimal!]
    #it 'amount' do
    #  query = <<-GRAPHQL
    #    { money_v2 { amount() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'money_v2')
    #  expect(result['amount']).to eq money_v2.amount
    #end

    # @graphql currencyCode Currency of the money.
    # @return [Types::CurrencyCode!]
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
