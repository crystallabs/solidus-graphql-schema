require 'spec_helper'

describe 'Types' do
  describe 'Domain' do
    #let!(:domain) {create(:domain)}

    # @graphql host The host name of the domain (eg: `example.com`).
    # @return [Types::String!]
    #it 'host' do
    #  query = <<-GRAPHQL
    #    { domain { host() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'domain')
    #  expect(result['host']).to eq domain.host
    #end

    # @graphql sslEnabled Whether SSL is enabled or not.
    # @return [Types::Boolean!]
    #it 'ssl_enabled' do
    #  query = <<-GRAPHQL
    #    { domain { sslEnabled() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'domain')
    #  expect(result['sslEnabled']).to eq domain.ssl_enabled
    #end

    # @graphql url The URL of the domain (eg: `https://example.com`).
    # @return [Types::URL!]
    #it 'url' do
    #  query = <<-GRAPHQL
    #    { domain { url() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'domain')
    #  expect(result['url']).to eq domain.url
    #end

  end
end
