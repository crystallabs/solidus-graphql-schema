require 'spec_helper'

describe 'Types' do
  describe 'ProductPriceRange' do
    #let!(:product_price_range) {create(:product_price_range)}

    # Field: maxVariantPrice: The highest variant's price.
    # Args: 
    # Returns: Types::MoneyV2!
    #it 'max_variant_price' do
    #  query = <<-GRAPHQL
    #    { product_price_range { maxVariantPrice() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product_price_range')
    #  expect(result['maxVariantPrice']).to eq product_price_range.max_variant_price
    #end

    # Field: minVariantPrice: The lowest variant's price.
    # Args: 
    # Returns: Types::MoneyV2!
    #it 'min_variant_price' do
    #  query = <<-GRAPHQL
    #    { product_price_range { minVariantPrice() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'product_price_range')
    #  expect(result['minVariantPrice']).to eq product_price_range.min_variant_price
    #end

  end
end

