require 'spec_helper'

describe 'Types' do
  describe 'Shop' do
    #let!(:shop) {create(:shop)}

    # @graphql collectionByHandle Find a collection by its handle.
    # @param handle [Types::String!]
    # @return [Types::Collection]
    #it 'collection_by_handle' do
    #  query = <<-GRAPHQL
    #    { shop { collectionByHandle(handle:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'shop')
    #  expect(result['collectionByHandle']).to eq shop.collection_by_handle
    #end

    # @graphql collections List of the shop’s collections.
    # @param reverse [Types::Boolean] (false)
    # @param sort_key [Types::CollectionSortKeys] ('ID')
    # @param query [Types::String]
    # @return [Types::Collection.connection_type!]
    #it 'collections' do
    #  query = <<-GRAPHQL
    #    { shop { collections(reverse:, sort_key:, query:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'shop')
    #  expect(result['collections']).to eq shop.collections
    #end

    # @graphql description A description of the shop.
    # @return [Types::String]
    #it 'description' do
    #  query = <<-GRAPHQL
    #    { shop { description() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'shop')
    #  expect(result['description']).to eq shop.description
    #end

    # @graphql moneyFormat A string representing the way currency is formatted when the currency isn’t specified.
    # @return [Types::String!]
    #it 'money_format' do
    #  query = <<-GRAPHQL
    #    { shop { moneyFormat() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'shop')
    #  expect(result['moneyFormat']).to eq shop.money_format
    #end

    # @graphql name The shop’s name.
    # @return [Types::String!]
    #it 'name' do
    #  query = <<-GRAPHQL
    #    { shop { name() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'shop')
    #  expect(result['name']).to eq shop.name
    #end

    # @graphql paymentSettings Settings related to payments.
    # @return [Types::PaymentSettings!]
    #it 'payment_settings' do
    #  query = <<-GRAPHQL
    #    { shop { paymentSettings() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'shop')
    #  expect(result['paymentSettings']).to eq shop.payment_settings
    #end

    # @graphql primaryDomain The shop’s primary domain.
    # @return [Types::Domain!]
    #it 'primary_domain' do
    #  query = <<-GRAPHQL
    #    { shop { primaryDomain() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'shop')
    #  expect(result['primaryDomain']).to eq shop.primary_domain
    #end

    # @graphql privacyPolicy The shop’s privacy policy.
    # @return [Types::ShopPolicy]
    #it 'privacy_policy' do
    #  query = <<-GRAPHQL
    #    { shop { privacyPolicy() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'shop')
    #  expect(result['privacyPolicy']).to eq shop.privacy_policy
    #end

    # @graphql productByHandle Find a product by its handle.
    # @param handle [Types::String!]
    # @return [Types::Product]
    #it 'product_by_handle' do
    #  query = <<-GRAPHQL
    #    { shop { productByHandle(handle:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'shop')
    #  expect(result['productByHandle']).to eq shop.product_by_handle
    #end

    # @graphql productTypes List of the shop’s product types.
    # @return [Types::String.connection_type!]
    #it 'product_types' do
    #  query = <<-GRAPHQL
    #    { shop { productTypes() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'shop')
    #  expect(result['productTypes']).to eq shop.product_types
    #end

    # @graphql products List of the shop’s products.
    # @param reverse [Types::Boolean] (false)
    # @param sort_key [Types::ProductSortKeys] ('ID')
    # @param query [Types::String]
    # @return [Types::Product.connection_type!]
    #it 'products' do
    #  query = <<-GRAPHQL
    #    { shop { products(reverse:, sort_key:, query:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'shop')
    #  expect(result['products']).to eq shop.products
    #end

    # @graphql refundPolicy The shop’s refund policy.
    # @return [Types::ShopPolicy]
    #it 'refund_policy' do
    #  query = <<-GRAPHQL
    #    { shop { refundPolicy() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'shop')
    #  expect(result['refundPolicy']).to eq shop.refund_policy
    #end

    # @graphql shipsToCountries Countries that the shop ships to.
    # @return [[Types::CountryCode!]!]
    #it 'ships_to_countries' do
    #  query = <<-GRAPHQL
    #    { shop { shipsToCountries() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'shop')
    #  expect(result['shipsToCountries']).to eq shop.ships_to_countries
    #end

    # @graphql termsOfService The shop’s terms of service.
    # @return [Types::ShopPolicy]
    #it 'terms_of_service' do
    #  query = <<-GRAPHQL
    #    { shop { termsOfService() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'shop')
    #  expect(result['termsOfService']).to eq shop.terms_of_service
    #end

  end
end

