require 'spec_helper'

describe 'Types' do
  describe 'DiscountAllocation' do
    #let!(:discount_allocation) {create(:discount_allocation)}

    # @graphql allocatedAmount Amount of discount allocated.
    # @return [Types::MoneyV2!]
    #it 'allocated_amount' do
    #  query = <<-GRAPHQL
    #    { discount_allocation { allocatedAmount() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'discount_allocation')
    #  expect(result['allocatedAmount']).to eq discount_allocation.allocated_amount
    #end

    # @graphql discountApplication The discount this allocated amount originated from.
    # @return [Interfaces::DiscountApplication!]
    #it 'discount_application' do
    #  query = <<-GRAPHQL
    #    { discount_allocation { discountApplication() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'discount_allocation')
    #  expect(result['discountApplication']).to eq discount_allocation.discount_application
    #end

  end
end
