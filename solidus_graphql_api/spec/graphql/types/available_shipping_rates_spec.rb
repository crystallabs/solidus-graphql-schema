# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::AvailableShippingRates' do
    #let!(:available_shipping_rates) { create(:available_shipping_rates) }
    #let!(:ctx) { { current_store: ::Spree::Store.where(default: true).first } }
    #let!(:variables) { }

    # ready: Whether or not the shipping rates are ready. The `shippingRates` field is `null` when this value is `false`. This field should be polled until its value becomes `true`. 
    # @return [Types::Boolean!]
    describe 'ready' do
      let!(:query) { '{ available_shipping_rates { ready } }' }
      let!(:result) { { data: { available_shipping_rates: { ready: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # shippingRates: The fetched shipping rates. `null` until the `ready` field is `true`.
    # @return [[Types::ShippingRate!]]
    describe 'shippingRates' do
      let!(:query) { '{ available_shipping_rates { shippingRates } }' }
      let!(:result) { { data: { available_shipping_rates: { shippingRates: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
