require 'spec_helper'

describe 'Types' do
  describe 'DiscountCodeApplication' do
    #let!(:discount_code_application) {create(:discount_code_application)}

    # Field: allocationMethod: The method by which the discount's value is allocated to its entitled items.
    # Args: 
    # Returns: Types::DiscountApplicationAllocationMethod!
    #it 'allocation_method' do
    #  query = <<-GRAPHQL
    #    { discount_code_application { allocationMethod() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'discount_code_application')
    #  expect(result['allocationMethod']).to eq discount_code_application.allocation_method
    #end

    # Field: applicable: Specifies whether the discount code was applied successfully.
    # Args: 
    # Returns: Types::Boolean!
    #it 'applicable' do
    #  query = <<-GRAPHQL
    #    { discount_code_application { applicable() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'discount_code_application')
    #  expect(result['applicable']).to eq discount_code_application.applicable
    #end

    # Field: code: The string identifying the discount code that was used at the time of application.
    # Args: 
    # Returns: Types::String!
    #it 'code' do
    #  query = <<-GRAPHQL
    #    { discount_code_application { code() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'discount_code_application')
    #  expect(result['code']).to eq discount_code_application.code
    #end

    # Field: targetSelection: Which lines of targetType that the discount is allocated over.
    # Args: 
    # Returns: Types::DiscountApplicationTargetSelection!
    #it 'target_selection' do
    #  query = <<-GRAPHQL
    #    { discount_code_application { targetSelection() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'discount_code_application')
    #  expect(result['targetSelection']).to eq discount_code_application.target_selection
    #end

    # Field: targetType: The type of line that the discount is applicable towards.
    # Args: 
    # Returns: Types::DiscountApplicationTargetType!
    #it 'target_type' do
    #  query = <<-GRAPHQL
    #    { discount_code_application { targetType() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'discount_code_application')
    #  expect(result['targetType']).to eq discount_code_application.target_type
    #end

    # Field: value: The value of the discount application.
    # Args: 
    # Returns: Types::PricingValue!
    #it 'value' do
    #  query = <<-GRAPHQL
    #    { discount_code_application { value() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'discount_code_application')
    #  expect(result['value']).to eq discount_code_application.value
    #end

  end
end

