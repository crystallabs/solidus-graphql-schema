require 'spec_helper'

describe 'Types' do
  describe 'Attribute' do
    #let!(:attribute) {create(:attribute)}

    # @graphql key Key or name of the attribute.
    # @return [Types::String!]
    #it 'key' do
    #  query = <<-GRAPHQL
    #    { attribute { key() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'attribute')
    #  expect(result['key']).to eq attribute.key
    #end

    # @graphql value Value of the attribute.
    # @return [Types::String]
    #it 'value' do
    #  query = <<-GRAPHQL
    #    { attribute { value() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'attribute')
    #  expect(result['value']).to eq attribute.value
    #end

  end
end

