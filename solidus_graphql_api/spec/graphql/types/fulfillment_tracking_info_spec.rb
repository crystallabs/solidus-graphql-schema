require 'spec_helper'

describe 'Types' do
  describe 'FulfillmentTrackingInfo' do
    #let!(:fulfillment_tracking_info) {create(:fulfillment_tracking_info)}

    # Field: number: The tracking number of the fulfillment.
    # Args: 
    # Returns: Types::String
    #it 'number' do
    #  query = <<-GRAPHQL
    #    { fulfillment_tracking_info { number() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'fulfillment_tracking_info')
    #  expect(result['number']).to eq fulfillment_tracking_info.number
    #end

    # Field: url: The URL to track the fulfillment.
    # Args: 
    # Returns: Types::URL
    #it 'url' do
    #  query = <<-GRAPHQL
    #    { fulfillment_tracking_info { url() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'fulfillment_tracking_info')
    #  expect(result['url']).to eq fulfillment_tracking_info.url
    #end

  end
end

