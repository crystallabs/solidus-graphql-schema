require 'spec_helper'

describe 'Types' do
  describe 'Transaction' do
    #let!(:transaction) {create(:transaction)}

    # Field: amount: The amount of money that the transaction was for.
    # Args: 
    # Returns: Types::Money!
    #it 'amount' do
    #  query = <<-GRAPHQL
    #    { transaction { amount() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'transaction')
    #  expect(result['amount']).to eq transaction.amount
    #end

    # Field: kind: The kind of the transaction.
    # Args: 
    # Returns: Types::TransactionKind!
    #it 'kind' do
    #  query = <<-GRAPHQL
    #    { transaction { kind() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'transaction')
    #  expect(result['kind']).to eq transaction.kind
    #end

    # Field: status: The status of the transaction
    # Args: 
    # Returns: Types::TransactionStatus!
    #it 'status' do
    #  query = <<-GRAPHQL
    #    { transaction { status() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'transaction')
    #  expect(result['status']).to eq transaction.status
    #end

    # Field: test: Whether the transaction was done in test mode or not
    # Args: 
    # Returns: Types::Boolean!
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

