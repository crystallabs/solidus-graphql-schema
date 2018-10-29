require 'spec_helper'

describe 'Types' do
  describe 'AvailableShippingRates' do
    #let!(:available_shipping_rates) {create(:available_shipping_rates)}

    # @graphql ready Whether or not the shipping rates are ready. The `shippingRates` field is `null` when this value is `false`. This field should be polled until its value becomes `true`. 
    # @return [Types::Boolean!]
    #it 'ready' do
    #  query = <<-GRAPHQL
    #    { available_shipping_rates { ready() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'available_shipping_rates')
    #  expect(result['ready']).to eq available_shipping_rates.ready
    #end

    # @graphql shippingRates The fetched shipping rates. `null` until the `ready` field is `true`.
    # @return [[Types::ShippingRate!]]
    #it 'shipping_rates' do
    #  query = <<-GRAPHQL
    #    { available_shipping_rates { shippingRates() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'available_shipping_rates')
    #  expect(result['shippingRates']).to eq available_shipping_rates.shipping_rates
    #end

  end
end

