# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::Fulfillment' do
    let!(:fulfillment) { create(:fulfillment) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # fulfillmentLineItems: List of the fulfillment's line items.
    # @param reverse [Types::Boolean] (false)
    # @return [Types::FulfillmentLineItem.connection_type!]
    describe 'fulfillmentLineItems' do
      let!(:query) { '{ fulfillment { fulfillmentLineItems } }' }
      let!(:result) { { data: { fulfillment: { fulfillmentLineItems: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # trackingCompany: The name of the tracking company.
    # @return [Types::String]
    describe 'trackingCompany' do
      let!(:query) { '{ fulfillment { trackingCompany } }' }
      let!(:result) { { data: { fulfillment: { trackingCompany: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # trackingInfo: Tracking information associated with the fulfillment, such as the tracking number and tracking URL. 
    # @param first [Types::Int]
    # @return [[Types::FulfillmentTrackingInfo!]!]
    describe 'trackingInfo' do
      let!(:query) { '{ fulfillment { trackingInfo } }' }
      let!(:result) { { data: { fulfillment: { trackingInfo: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
