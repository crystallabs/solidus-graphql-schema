require 'spec_helper'

describe 'Types' do
  describe 'ProductVariant' do
    #let!(:product_variant) {create(:product_variant)}

    # Field: availableForSale: Indicates if the product variant is available for sale.
    # Args: 
    # Returns: Types::Boolean!
    #it 'available_for_sale' do
    #  query = <<-GRAPHQL
    #    { product_variant { availableForSale() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product_variant')
    #  expect(result['availableForSale']).to eq product_variant.available_for_sale
    #end

    # Field: compareAtPrice: The compare at price of the variant. This can be used to mark a variant as on sale, when `compareAtPrice` is higher than `price`.
    # Args: 
    # Returns: Types::Money
    #it 'compare_at_price' do
    #  query = <<-GRAPHQL
    #    { product_variant { compareAtPrice() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product_variant')
    #  expect(result['compareAtPrice']).to eq product_variant.compare_at_price
    #end

    # Field: id: Globally unique identifier.
    # Args: 
    # Returns: Types::ID!
    #it 'id' do
    #  query = <<-GRAPHQL
    #    { product_variant { id() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product_variant')
    #  expect(result['id']).to eq product_variant.id
    #end

    # Field: image: Image associated with the product variant. This field falls back to the product image if no image is available.
    # Args: max_width : Types::Int, max_height : Types::Int, crop : Types::CropRegion, scale : Types::Int = 1
    # Returns: Types::Image
    #it 'image' do
    #  query = <<-GRAPHQL
    #    { product_variant { image(max_width:, max_height:, crop:, scale:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product_variant')
    #  expect(result['image']).to eq product_variant.image
    #end

    # Field: price: The product variant’s price.
    # Args: 
    # Returns: Types::Money!
    #it 'price' do
    #  query = <<-GRAPHQL
    #    { product_variant { price() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product_variant')
    #  expect(result['price']).to eq product_variant.price
    #end

    # Field: product: The product object that the product variant belongs to.
    # Args: 
    # Returns: Types::Product!
    #it 'product' do
    #  query = <<-GRAPHQL
    #    { product_variant { product() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product_variant')
    #  expect(result['product']).to eq product_variant.product
    #end

    # Field: selectedOptions: List of product options applied to the variant.
    # Args: 
    # Returns: [Types::SelectedOption!]!
    #it 'selected_options' do
    #  query = <<-GRAPHQL
    #    { product_variant { selectedOptions() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product_variant')
    #  expect(result['selectedOptions']).to eq product_variant.selected_options
    #end

    # Field: sku: The SKU (stock keeping unit) associated with the variant.
    # Args: 
    # Returns: Types::String
    #it 'sku' do
    #  query = <<-GRAPHQL
    #    { product_variant { sku() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product_variant')
    #  expect(result['sku']).to eq product_variant.sku
    #end

    # Field: title: The product variant’s title.
    # Args: 
    # Returns: Types::String!
    #it 'title' do
    #  query = <<-GRAPHQL
    #    { product_variant { title() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product_variant')
    #  expect(result['title']).to eq product_variant.title
    #end

    # Field: weight: The weight of the product variant in the unit system specified with `weight_unit`.
    # Args: 
    # Returns: Types::Float
    #it 'weight' do
    #  query = <<-GRAPHQL
    #    { product_variant { weight() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product_variant')
    #  expect(result['weight']).to eq product_variant.weight
    #end

    # Field: weightUnit: Unit of measurement for weight.
    # Args: 
    # Returns: Types::WeightUnit!
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

