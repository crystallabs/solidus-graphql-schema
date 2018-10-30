require 'spec_helper'

describe 'Interfaces' do
  describe 'DiscountApplication' do
    #let!(:discount_application) {create(:discount_application)}

    # @graphql allocationMethod The method by which the discount's value is allocated to its entitled items.
    # @return [Types::DiscountApplicationAllocationMethod!]
    #it 'allocation_method' do
    #  query = <<-GRAPHQL
    #    { discount_application { allocationMethod() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'discount_application')
    #  expect(result['allocationMethod']).to eq discount_application.allocation_method
    #end

    # @graphql targetSelection Which lines of targetType that the discount is allocated over.
    # @return [Types::DiscountApplicationTargetSelection!]
    #it 'target_selection' do
    #  query = <<-GRAPHQL
    #    { discount_application { targetSelection() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'discount_application')
    #  expect(result['targetSelection']).to eq discount_application.target_selection
    #end

    # @graphql targetType The type of line that the discount is applicable towards.
    # @return [Types::DiscountApplicationTargetType!]
    #it 'target_type' do
    #  query = <<-GRAPHQL
    #    { discount_application { targetType() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'discount_application')
    #  expect(result['targetType']).to eq discount_application.target_type
    #end

    # @graphql value The value of the discount application.
    # @return [Types::PricingValue!]
    #it 'value' do
    #  query = <<-GRAPHQL
    #    { discount_application { value() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'discount_application')
    #  expect(result['value']).to eq discount_application.value
    #end

  end
end

