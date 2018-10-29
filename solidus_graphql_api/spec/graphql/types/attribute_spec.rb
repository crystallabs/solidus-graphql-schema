require 'spec_helper'

describe 'Types' do
  describe 'Attribute' do
    #let!(:attribute) {create(:attribute)}

    # Field: key: Key or name of the attribute.
    # Args: 
    # Returns: Types::String!
    #it 'key' do
    #  query = <<-GRAPHQL
    #    { attribute { key() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'attribute')
    #  expect(result['key']).to eq attribute.key
    #end

    # Field: value: Value of the attribute.
    # Args: 
    # Returns: Types::String
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

