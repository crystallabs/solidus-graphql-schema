require 'spec_helper'

describe 'Types' do
  describe 'Image' do
    #let!(:image) {create(:image)}

    # Field: altText: A word or phrase to share the nature or contents of an image.
    # Args: 
    # Returns: Types::String
    #it 'alt_text' do
    #  query = <<-GRAPHQL
    #    { image { altText() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'image')
    #  expect(result['altText']).to eq image.alt_text
    #end

    # Field: id: A unique identifier for the image.
    # Args: 
    # Returns: Types::ID
    #it 'id' do
    #  query = <<-GRAPHQL
    #    { image { id() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'image')
    #  expect(result['id']).to eq image.id
    #end

    # Field: originalSrc: The location of the original (untransformed) image as a URL.
    # Args: 
    # Returns: Types::URL!
    #it 'original_src' do
    #  query = <<-GRAPHQL
    #    { image { originalSrc() }}
    #  GRAPHQL
    #  response = ::Spree::GraphQL::Schema::Schema.execute(query)
    #  result = response.dig('data', 'image')
    #  expect(result['originalSrc']).to eq image.original_src
    #end

    # Field: transformedSrc: The location of the transformed image as a URL. All transformation arguments are considered "best-effort". If they can be applied to an image, they will be. Otherwise any transformations which an image type does not support will be ignored. 
    # Args: max_width : Types::Int, max_height : Types::Int, crop : Types::CropRegion, scale : Types::Int = 1, preferred_content_type : Types::ImageContentType
    # Returns: Types::URL!
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

