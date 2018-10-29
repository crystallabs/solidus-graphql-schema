require 'spec_helper'

describe 'Types' do
  describe 'Fulfillment' do
    #let!(:fulfillment) {create(:fulfillment)}

    # Field: fulfillmentLineItems: List of the fulfillment's line items.
    # Args: reverse : Types::Boolean = false
    # Returns: Types::FulfillmentLineItem.connection_type!
    #it 'fulfillment_line_items' do
    #  query = <<-GRAPHQL
    #    { fulfillment { fulfillmentLineItems(reverse:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'fulfillment')
    #  expect(result['fulfillmentLineItems']).to eq fulfillment.fulfillment_line_items
    #end

    # Field: trackingCompany: The name of the tracking company.
    # Args: 
    # Returns: Types::String
    #it 'tracking_company' do
    #  query = <<-GRAPHQL
    #    { fulfillment { trackingCompany() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'fulfillment')
    #  expect(result['trackingCompany']).to eq fulfillment.tracking_company
    #end

    # Field: trackingInfo: Tracking information associated with the fulfillment, such as the tracking number and tracking URL. 
    # Args: first : Types::Int
    # Returns: [Types::FulfillmentTrackingInfo!]!
    #it 'tracking_info' do
    #  query = <<-GRAPHQL
    #    { fulfillment { trackingInfo(first:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'fulfillment')
    #  expect(result['trackingInfo']).to eq fulfillment.tracking_info
    #end

  end
end
