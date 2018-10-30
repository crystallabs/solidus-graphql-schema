require 'spec_helper'

describe 'Types' do
  describe 'ProductVariant' do
    #let!(:product_variant) {create(:product_variant)}

    # @graphql availableForSale Indicates if the product variant is available for sale.
    # @return [Types::Boolean!]
    #it 'available_for_sale' do
    #  query = <<-GRAPHQL
    #    { product_variant { availableForSale() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product_variant')
    #  expect(result['availableForSale']).to eq product_variant.available_for_sale
    #end

    # @graphql compareAtPrice The compare at price of the variant. This can be used to mark a variant as on sale, when `compareAtPrice` is higher than `price`.
    # @return [Types::Money]
    #it 'compare_at_price' do
    #  query = <<-GRAPHQL
    #    { product_variant { compareAtPrice() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product_variant')
    #  expect(result['compareAtPrice']).to eq product_variant.compare_at_price
    #end

    # @graphql id Globally unique identifier.
    # @return [Types::ID!]
    #it 'id' do
    #  query = <<-GRAPHQL
    #    { product_variant { id() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product_variant')
    #  expect(result['id']).to eq product_variant.id
    #end

    # @graphql image Image associated with the product variant. This field falls back to the product image if no image is available.
    # @param max_width [Types::Int]
    # @param max_height [Types::Int]
    # @param crop [Types::CropRegion]
    # @param scale [Types::Int] (1)
    # @return [Types::Image]
    #it 'image' do
    #  query = <<-GRAPHQL
    #    { product_variant { image(max_width:, max_height:, crop:, scale:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product_variant')
    #  expect(result['image']).to eq product_variant.image
    #end

    # @graphql price The product variant’s price.
    # @return [Types::Money!]
    #it 'price' do
    #  query = <<-GRAPHQL
    #    { product_variant { price() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product_variant')
    #  expect(result['price']).to eq product_variant.price
    #end

    # @graphql product The product object that the product variant belongs to.
    # @return [Types::Product!]
    #it 'product' do
    #  query = <<-GRAPHQL
    #    { product_variant { product() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product_variant')
    #  expect(result['product']).to eq product_variant.product
    #end

    # @graphql selectedOptions List of product options applied to the variant.
    # @return [[Types::SelectedOption!]!]
    #it 'selected_options' do
    #  query = <<-GRAPHQL
    #    { product_variant { selectedOptions() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product_variant')
    #  expect(result['selectedOptions']).to eq product_variant.selected_options
    #end

    # @graphql sku The SKU (stock keeping unit) associated with the variant.
    # @return [Types::String]
    #it 'sku' do
    #  query = <<-GRAPHQL
    #    { product_variant { sku() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product_variant')
    #  expect(result['sku']).to eq product_variant.sku
    #end

    # @graphql title The product variant’s title.
    # @return [Types::String!]
    #it 'title' do
    #  query = <<-GRAPHQL
    #    { product_variant { title() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product_variant')
    #  expect(result['title']).to eq product_variant.title
    #end

    # @graphql weight The weight of the product variant in the unit system specified with `weight_unit`.
    # @return [Types::Float]
    #it 'weight' do
    #  query = <<-GRAPHQL
    #    { product_variant { weight() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product_variant')
    #  expect(result['weight']).to eq product_variant.weight
    #end

    # @graphql weightUnit Unit of measurement for weight.
    # @return [Types::WeightUnit!]
    #it 'weight_unit' do
    #  query = <<-GRAPHQL
    #    { product_variant { weightUnit() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product_variant')
    #  expect(result['weightUnit']).to eq product_variant.weight_unit
    #end

  end
end
