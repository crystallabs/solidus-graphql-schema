# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::FulfillmentTrackingInfo' do
    let!(:fulfillment_tracking_info) { create(:fulfillment_tracking_info) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # number: The tracking number of the fulfillment.
    # @return [Types::String]
    describe 'number' do
      let!(:query) { '{ fulfillment_tracking_info { number } }' }
      let!(:result) { { data: { fulfillment_tracking_info: { number: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # url: The URL to track the fulfillment.
    # @return [Types::URL]
    describe 'url' do
      let!(:query) { '{ fulfillment_tracking_info { url } }' }
      let!(:result) { { data: { fulfillment_tracking_info: { url: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
