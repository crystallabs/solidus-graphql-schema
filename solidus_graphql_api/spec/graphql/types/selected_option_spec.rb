require 'spec_helper'

describe 'Types' do
  describe 'SelectedOption' do
    #let!(:selected_option) {create(:selected_option)}

    # @graphql name The product option’s name.
    # @return [Types::String!]
    #it 'name' do
    #  query = <<-GRAPHQL
    #    { selected_option { name() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'selected_option')
    #  expect(result['name']).to eq selected_option.name
    #end

    # @graphql value The product option’s value.
    # @return [Types::String!]
    #it 'value' do
    #  query = <<-GRAPHQL
    #    { selected_option { value() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'selected_option')
    #  expect(result['value']).to eq selected_option.value
    #end

  end
end

