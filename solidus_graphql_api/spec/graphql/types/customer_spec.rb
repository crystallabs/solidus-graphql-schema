require 'spec_helper'

describe 'Types' do
  describe 'Customer' do
    #let!(:customer) {create(:customer)}

    # Field: acceptsMarketing: Indicates whether the customer has consented to be sent marketing material via email.
    # Args: 
    # Returns: Types::Boolean!
    #it 'accepts_marketing' do
    #  query = <<-GRAPHQL
    #    { customer { acceptsMarketing() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer')
    #  expect(result['acceptsMarketing']).to eq customer.accepts_marketing
    #end

    # Field: addresses: A list of addresses for the customer.
    # Args: reverse : Types::Boolean = false
    # Returns: Types::MailingAddress.connection_type!
    #it 'addresses' do
    #  query = <<-GRAPHQL
    #    { customer { addresses(reverse:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer')
    #  expect(result['addresses']).to eq customer.addresses
    #end

    # Field: createdAt: The date and time when the customer was created.
    # Args: 
    # Returns: Types::DateTime!
    #it 'created_at' do
    #  query = <<-GRAPHQL
    #    { customer { createdAt() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer')
    #  expect(result['createdAt']).to eq customer.created_at
    #end

    # Field: defaultAddress: The customer’s default address.
    # Args: 
    # Returns: Types::MailingAddress
    #it 'default_address' do
    #  query = <<-GRAPHQL
    #    { customer { defaultAddress() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer')
    #  expect(result['defaultAddress']).to eq customer.default_address
    #end

    # Field: displayName: The customer’s name, email or phone number.
    # Args: 
    # Returns: Types::String!
    #it 'display_name' do
    #  query = <<-GRAPHQL
    #    { customer { displayName() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer')
    #  expect(result['displayName']).to eq customer.display_name
    #end

    # Field: email: The customer’s email address.
    # Args: 
    # Returns: Types::String
    #it 'email' do
    #  query = <<-GRAPHQL
    #    { customer { email() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer')
    #  expect(result['email']).to eq customer.email
    #end

    # Field: firstName: The customer’s first name.
    # Args: 
    # Returns: Types::String
    #it 'first_name' do
    #  query = <<-GRAPHQL
    #    { customer { firstName() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer')
    #  expect(result['firstName']).to eq customer.first_name
    #end

    # Field: id: A unique identifier for the customer.
    # Args: 
    # Returns: Types::ID!
    #it 'id' do
    #  query = <<-GRAPHQL
    #    { customer { id() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer')
    #  expect(result['id']).to eq customer.id
    #end

    # Field: lastIncompleteCheckout: The customer's most recently updated, incomplete checkout.
    # Args: 
    # Returns: Types::Checkout
    #it 'last_incomplete_checkout' do
    #  query = <<-GRAPHQL
    #    { customer { lastIncompleteCheckout() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer')
    #  expect(result['lastIncompleteCheckout']).to eq customer.last_incomplete_checkout
    #end

    # Field: lastName: The customer’s last name.
    # Args: 
    # Returns: Types::String
    #it 'last_name' do
    #  query = <<-GRAPHQL
    #    { customer { lastName() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer')
    #  expect(result['lastName']).to eq customer.last_name
    #end

    # Field: orders: The orders associated with the customer.
    # Args: reverse : Types::Boolean = false, sort_key : Types::OrderSortKeys = 'ID', query : Types::String
    # Returns: Types::Order.connection_type!
    #it 'orders' do
    #  query = <<-GRAPHQL
    #    { customer { orders(reverse:, sort_key:, query:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer')
    #  expect(result['orders']).to eq customer.orders
    #end

    # Field: phone: The customer’s phone number.
    # Args: 
    # Returns: Types::String
    #it 'phone' do
    #  query = <<-GRAPHQL
    #    { customer { phone() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'customer')
    #  expect(result['phone']).to eq customer.phone
    #end

    # Field: updatedAt: The date and time when the customer information was updated.
    # Args: 
    # Returns: Types::DateTime!
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

