require 'spec_helper'

describe 'Types' do
  describe 'Image' do
    #let!(:image) {create(:image)}

    # @graphql altText A word or phrase to share the nature or contents of an image.
    # @return [Types::String]
    #it 'alt_text' do
    #  query = <<-GRAPHQL
    #    { image { altText() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'image')
    #  expect(result['altText']).to eq image.alt_text
    #end

    # @graphql id A unique identifier for the image.
    # @return [Types::ID]
    #it 'id' do
    #  query = <<-GRAPHQL
    #    { image { id() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'image')
    #  expect(result['id']).to eq image.id
    #end

    # @graphql originalSrc The location of the original (untransformed) image as a URL.
    # @return [Types::URL!]
    #it 'original_src' do
    #  query = <<-GRAPHQL
    #    { image { originalSrc() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'image')
    #  expect(result['originalSrc']).to eq image.original_src
    #end

    # @graphql transformedSrc The location of the transformed image as a URL. All transformation arguments are considered "best-effort". If they can be applied to an image, they will be. Otherwise any transformations which an image type does not support will be ignored. 
    # @param max_width [Types::Int]
    # @param max_height [Types::Int]
    # @param crop [Types::CropRegion]
    # @param scale [Types::Int] (1)
    # @param preferred_content_type [Types::ImageContentType]
    # @return [Types::URL!]
    #it 'transformed_src' do
    #  query = <<-GRAPHQL
    #    { image { transformedSrc(max_width:, max_height:, crop:, scale:, preferred_content_type:) }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'image')
    #  expect(result['transformedSrc']).to eq image.transformed_src
    #end

  end
end

