require 'spec_helper'

describe 'Types' do
  describe 'CreditCard' do
    #let!(:credit_card) {create(:credit_card)}

    # @graphql brand
    # @return [Types::String]
    #it 'brand' do
    #  query = <<-GRAPHQL
    #    { credit_card { brand() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'credit_card')
    #  expect(result['brand']).to eq credit_card.brand
    #end

    # @graphql expiryMonth
    # @return [Types::Int]
    #it 'expiry_month' do
    #  query = <<-GRAPHQL
    #    { credit_card { expiryMonth() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'credit_card')
    #  expect(result['expiryMonth']).to eq credit_card.expiry_month
    #end

    # @graphql expiryYear
    # @return [Types::Int]
    #it 'expiry_year' do
    #  query = <<-GRAPHQL
    #    { credit_card { expiryYear() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'credit_card')
    #  expect(result['expiryYear']).to eq credit_card.expiry_year
    #end

    # @graphql firstDigits
    # @return [Types::String]
    #it 'first_digits' do
    #  query = <<-GRAPHQL
    #    { credit_card { firstDigits() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'credit_card')
    #  expect(result['firstDigits']).to eq credit_card.first_digits
    #end

    # @graphql firstName
    # @return [Types::String]
    #it 'first_name' do
    #  query = <<-GRAPHQL
    #    { credit_card { firstName() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'credit_card')
    #  expect(result['firstName']).to eq credit_card.first_name
    #end

    # @graphql lastDigits
    # @return [Types::String]
    #it 'last_digits' do
    #  query = <<-GRAPHQL
    #    { credit_card { lastDigits() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'credit_card')
    #  expect(result['lastDigits']).to eq credit_card.last_digits
    #end

    # @graphql lastName
    # @return [Types::String]
    #it 'last_name' do
    #  query = <<-GRAPHQL
    #    { credit_card { lastName() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'credit_card')
    #  expect(result['lastName']).to eq credit_card.last_name
    #end

    # @graphql maskedNumber Masked credit card number with only the last 4 digits displayed
    # @return [Types::String]
    #it 'masked_number' do
    #  query = <<-GRAPHQL
    #    { credit_card { maskedNumber() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'credit_card')
    #  expect(result['maskedNumber']).to eq credit_card.masked_number
    #end

  end
end
