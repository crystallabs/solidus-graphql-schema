require 'spec_helper'

describe 'Types' do
  describe 'ScriptDiscountApplication' do
    #let!(:script_discount_application) {create(:script_discount_application)}

    # Field: allocationMethod: The method by which the discount's value is allocated to its entitled items.
    # Args: 
    # Returns: Types::DiscountApplicationAllocationMethod!
    #it 'allocation_method' do
    #  query = <<-GRAPHQL
    #    { script_discount_application { allocationMethod() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'script_discount_application')
    #  expect(result['allocationMethod']).to eq script_discount_application.allocation_method
    #end

    # Field: description: The description of the application as defined by the Script.
    # Args: 
    # Returns: Types::String!
    #it 'description' do
    #  query = <<-GRAPHQL
    #    { script_discount_application { description() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'script_discount_application')
    #  expect(result['description']).to eq script_discount_application.description
    #end

    # Field: targetSelection: Which lines of targetType that the discount is allocated over.
    # Args: 
    # Returns: Types::DiscountApplicationTargetSelection!
    #it 'target_selection' do
    #  query = <<-GRAPHQL
    #    { script_discount_application { targetSelection() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'script_discount_application')
    #  expect(result['targetSelection']).to eq script_discount_application.target_selection
    #end

    # Field: targetType: The type of line that the discount is applicable towards.
    # Args: 
    # Returns: Types::DiscountApplicationTargetType!
    #it 'target_type' do
    #  query = <<-GRAPHQL
    #    { script_discount_application { targetType() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'script_discount_application')
    #  expect(result['targetType']).to eq script_discount_application.target_type
    #end

    # Field: value: The value of the discount application.
    # Args: 
    # Returns: Types::PricingValue!
    #it 'value' do
    #  query = <<-GRAPHQL
    #    { script_discount_application { value() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'script_discount_application')
    #  expect(result['value']).to eq script_discount_application.value
    #end

  end
end

