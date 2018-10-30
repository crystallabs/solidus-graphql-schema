require 'spec_helper'

describe 'Types' do
  describe 'Customer' do
    #let!(:customer) {create(:customer)}

    # @graphql acceptsMarketing Indicates whether the customer has consented to be sent marketing material via email.
    # @return [Types::Boolean!]
    #it 'accepts_marketing' do
    #  query = <<-GRAPHQL
    #    { customer { acceptsMarketing() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer')
    #  expect(result['acceptsMarketing']).to eq customer.accepts_marketing
    #end

    # @graphql addresses A list of addresses for the customer.
    # @param reverse [Types::Boolean] (false)
    # @return [Types::MailingAddress.connection_type!]
    #it 'addresses' do
    #  query = <<-GRAPHQL
    #    { customer { addresses(reverse:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer')
    #  expect(result['addresses']).to eq customer.addresses
    #end

    # @graphql createdAt The date and time when the customer was created.
    # @return [Types::DateTime!]
    #it 'created_at' do
    #  query = <<-GRAPHQL
    #    { customer { createdAt() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer')
    #  expect(result['createdAt']).to eq customer.created_at
    #end

    # @graphql defaultAddress The customer’s default address.
    # @return [Types::MailingAddress]
    #it 'default_address' do
    #  query = <<-GRAPHQL
    #    { customer { defaultAddress() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer')
    #  expect(result['defaultAddress']).to eq customer.default_address
    #end

    # @graphql displayName The customer’s name, email or phone number.
    # @return [Types::String!]
    #it 'display_name' do
    #  query = <<-GRAPHQL
    #    { customer { displayName() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer')
    #  expect(result['displayName']).to eq customer.display_name
    #end

    # @graphql email The customer’s email address.
    # @return [Types::String]
    #it 'email' do
    #  query = <<-GRAPHQL
    #    { customer { email() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer')
    #  expect(result['email']).to eq customer.email
    #end

    # @graphql firstName The customer’s first name.
    # @return [Types::String]
    #it 'first_name' do
    #  query = <<-GRAPHQL
    #    { customer { firstName() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer')
    #  expect(result['firstName']).to eq customer.first_name
    #end

    # @graphql id A unique identifier for the customer.
    # @return [Types::ID!]
    #it 'id' do
    #  query = <<-GRAPHQL
    #    { customer { id() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer')
    #  expect(result['id']).to eq customer.id
    #end

    # @graphql lastIncompleteCheckout The customer's most recently updated, incomplete checkout.
    # @return [Types::Checkout]
    #it 'last_incomplete_checkout' do
    #  query = <<-GRAPHQL
    #    { customer { lastIncompleteCheckout() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer')
    #  expect(result['lastIncompleteCheckout']).to eq customer.last_incomplete_checkout
    #end

    # @graphql lastName The customer’s last name.
    # @return [Types::String]
    #it 'last_name' do
    #  query = <<-GRAPHQL
    #    { customer { lastName() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer')
    #  expect(result['lastName']).to eq customer.last_name
    #end

    # @graphql orders The orders associated with the customer.
    # @param reverse [Types::Boolean] (false)
    # @param sort_key [Types::OrderSortKeys] ('ID')
    # @param query [Types::String]
    # @return [Types::Order.connection_type!]
    #it 'orders' do
    #  query = <<-GRAPHQL
    #    { customer { orders(reverse:, sort_key:, query:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer')
    #  expect(result['orders']).to eq customer.orders
    #end

    # @graphql phone The customer’s phone number.
    # @return [Types::String]
    #it 'phone' do
    #  query = <<-GRAPHQL
    #    { customer { phone() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer')
    #  expect(result['phone']).to eq customer.phone
    #end

    # @graphql updatedAt The date and time when the customer information was updated.
    # @return [Types::DateTime!]
    #it 'updated_at' do
    #  query = <<-GRAPHQL
    #    { customer { updatedAt() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer')
    #  expect(result['updatedAt']).to eq customer.updated_at
    #end

  end
end

