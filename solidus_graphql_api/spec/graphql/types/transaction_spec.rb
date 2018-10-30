require 'spec_helper'

describe 'Types' do
  describe 'Transaction' do
    #let!(:transaction) {create(:transaction)}

    # @graphql amount The amount of money that the transaction was for.
    # @return [Types::Money!]
    #it 'amount' do
    #  query = <<-GRAPHQL
    #    { transaction { amount() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'transaction')
    #  expect(result['amount']).to eq transaction.amount
    #end

    # @graphql kind The kind of the transaction.
    # @return [Types::TransactionKind!]
    #it 'kind' do
    #  query = <<-GRAPHQL
    #    { transaction { kind() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'transaction')
    #  expect(result['kind']).to eq transaction.kind
    #end

    # @graphql status The status of the transaction
    # @return [Types::TransactionStatus!]
    #it 'status' do
    #  query = <<-GRAPHQL
    #    { transaction { status() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'transaction')
    #  expect(result['status']).to eq transaction.status
    #end

    # @graphql test Whether the transaction was done in test mode or not
    # @return [Types::Boolean!]
    #it 'test' do
    #  query = <<-GRAPHQL
    #    { transaction { test() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'transaction')
    #  expect(result['test']).to eq transaction.test
    #end

  end
end
