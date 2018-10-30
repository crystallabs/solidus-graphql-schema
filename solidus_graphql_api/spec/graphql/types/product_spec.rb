require 'spec_helper'

describe 'Types' do
  describe 'Product' do
    #let!(:product) {create(:product)}

    # @graphql availableForSale Indicates if at least one product variant is available for sale.
    # @return [Types::Boolean!]
    #it 'available_for_sale' do
    #  query = <<-GRAPHQL
    #    { product { availableForSale() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product')
    #  expect(result['availableForSale']).to eq product.available_for_sale
    #end

    # @graphql collections List of collections a product belongs to.
    # @param reverse [Types::Boolean] (false)
    # @return [Types::Collection.connection_type!]
    #it 'collections' do
    #  query = <<-GRAPHQL
    #    { product { collections(reverse:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product')
    #  expect(result['collections']).to eq product.collections
    #end

    # @graphql createdAt The date and time when the product was created.
    # @return [Types::DateTime!]
    #it 'created_at' do
    #  query = <<-GRAPHQL
    #    { product { createdAt() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product')
    #  expect(result['createdAt']).to eq product.created_at
    #end

    # @graphql description Stripped description of the product, single line with HTML tags removed.
    # @param truncate_at [Types::Int]
    # @return [Types::String!]
    #it 'description' do
    #  query = <<-GRAPHQL
    #    { product { description(truncate_at:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product')
    #  expect(result['description']).to eq product.description
    #end

    # @graphql descriptionHtml The description of the product, complete with HTML formatting.
    # @return [Types::HTML!]
    #it 'description_html' do
    #  query = <<-GRAPHQL
    #    { product { descriptionHtml() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product')
    #  expect(result['descriptionHtml']).to eq product.description_html
    #end

    # @graphql handle A human-friendly unique string for the Product automatically generated from its title. They are used by the Liquid templating language to refer to objects. 
    # @return [Types::String!]
    #it 'handle' do
    #  query = <<-GRAPHQL
    #    { product { handle() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product')
    #  expect(result['handle']).to eq product.handle
    #end

    # @graphql id Globally unique identifier.
    # @return [Types::ID!]
    #it 'id' do
    #  query = <<-GRAPHQL
    #    { product { id() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product')
    #  expect(result['id']).to eq product.id
    #end

    # @graphql images List of images associated with the product.
    # @param reverse [Types::Boolean] (false)
    # @param sort_key [Types::ProductImageSortKeys] ('POSITION')
    # @param max_width [Types::Int]
    # @param max_height [Types::Int]
    # @param crop [Types::CropRegion]
    # @param scale [Types::Int] (1)
    # @return [Types::Image.connection_type!]
    #it 'images' do
    #  query = <<-GRAPHQL
    #    { product { images(reverse:, sort_key:, max_width:, max_height:, crop:, scale:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product')
    #  expect(result['images']).to eq product.images
    #end

    # @graphql onlineStoreUrl The online store URL for the product. A value of `null` indicates that the product is not published to the Online Store sales channel. 
    # @return [Types::URL]
    #it 'online_store_url' do
    #  query = <<-GRAPHQL
    #    { product { onlineStoreUrl() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product')
    #  expect(result['onlineStoreUrl']).to eq product.online_store_url
    #end

    # @graphql options List of custom product options (maximum of 3 per product).
    # @param first [Types::Int]
    # @return [[Types::ProductOption!]!]
    #it 'options' do
    #  query = <<-GRAPHQL
    #    { product { options(first:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product')
    #  expect(result['options']).to eq product.options
    #end

    # @graphql priceRange The price range.
    # @return [Types::ProductPriceRange!]
    #it 'price_range' do
    #  query = <<-GRAPHQL
    #    { product { priceRange() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product')
    #  expect(result['priceRange']).to eq product.price_range
    #end

    # @graphql productType A categorization that a product can be tagged with, commonly used for filtering and searching.
    # @return [Types::String!]
    #it 'product_type' do
    #  query = <<-GRAPHQL
    #    { product { productType() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product')
    #  expect(result['productType']).to eq product.product_type
    #end

    # @graphql publishedAt The date and time when the product was published to the channel.
    # @return [Types::DateTime!]
    #it 'published_at' do
    #  query = <<-GRAPHQL
    #    { product { publishedAt() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product')
    #  expect(result['publishedAt']).to eq product.published_at
    #end

    # @graphql tags A categorization that a product can be tagged with, commonly used for filtering and searching. Each comma-separated tag has a character limit of 255. 
    # @return [[Types::String!]!]
    #it 'tags' do
    #  query = <<-GRAPHQL
    #    { product { tags() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product')
    #  expect(result['tags']).to eq product.tags
    #end

    # @graphql title The product’s title.
    # @return [Types::String!]
    #it 'title' do
    #  query = <<-GRAPHQL
    #    { product { title() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product')
    #  expect(result['title']).to eq product.title
    #end

    # @graphql updatedAt The date and time when the product was last modified.
    # @return [Types::DateTime!]
    #it 'updated_at' do
    #  query = <<-GRAPHQL
    #    { product { updatedAt() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product')
    #  expect(result['updatedAt']).to eq product.updated_at
    #end

    # @graphql variantBySelectedOptions Find a product’s variant based on its selected options. This is useful for converting a user’s selection of product options into a single matching variant. If there is not a variant for the selected options, `null` will be returned. 
    # @param selected_options [[Inputs::SelectedOption!]!]
    # @return [Types::ProductVariant]
    #it 'variant_by_selected_options' do
    #  query = <<-GRAPHQL
    #    { product { variantBySelectedOptions(selected_options:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product')
    #  expect(result['variantBySelectedOptions']).to eq product.variant_by_selected_options
    #end

    # @graphql variants List of the product’s variants.
    # @param reverse [Types::Boolean] (false)
    # @param sort_key [Types::ProductVariantSortKeys] ('POSITION')
    # @return [Types::ProductVariant.connection_type!]
    #it 'variants' do
    #  query = <<-GRAPHQL
    #    { product { variants(reverse:, sort_key:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product')
    #  expect(result['variants']).to eq product.variants
    #end

    # @graphql vendor The product’s vendor name.
    # @return [Types::String!]
    #it 'vendor' do
    #  query = <<-GRAPHQL
    #    { product { vendor() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product')
    #  expect(result['vendor']).to eq product.vendor
    #end

  end
end
