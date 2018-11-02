# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::Collection' do
    #let!(:collection) { create(:collection) }
    #let!(:ctx) { { current_store: ::Spree::Store.where(default: true).first } }
    #let!(:variables) { }

    # description: Stripped description of the collection, single line with HTML tags removed.
    # @param truncate_at [Types::Int]
    # @return [Types::String!]
    describe 'description' do
      let!(:query) { '{ collection { description } }' }
      let!(:result) { { data: { collection: { description: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # descriptionHtml: The description of the collection, complete with HTML formatting.
    # @return [Types::HTML!]
    describe 'descriptionHtml' do
      let!(:query) { '{ collection { descriptionHtml } }' }
      let!(:result) { { data: { collection: { descriptionHtml: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # handle: A human-friendly unique string for the collection automatically generated from its title. Limit of 255 characters. 
    # @return [Types::String!]
    describe 'handle' do
      let!(:query) { '{ collection { handle } }' }
      let!(:result) { { data: { collection: { handle: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # id: Globally unique identifier.
    # @return [Types::ID!]
    describe 'id' do
      let!(:query) { '{ collection { id } }' }
      let!(:result) { { data: { collection: { id: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # image: Image associated with the collection.
    # @param max_width [Types::Int]
    # @param max_height [Types::Int]
    # @param crop [Types::CropRegion]
    # @param scale [Types::Int] (1)
    # @return [Types::Image]
    describe 'image' do
      let!(:query) { '{ collection { image } }' }
      let!(:result) { { data: { collection: { image: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # products: List of products in the collection.
    # @param reverse [Types::Boolean] (false)
    # @param sort_key [Types::ProductCollectionSortKeys] ('COLLECTION_DEFAULT')
    # @return [Types::Product.connection_type!]
    describe 'products' do
      let!(:query) { '{ collection { products } }' }
      let!(:result) { { data: { collection: { products: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # title: The collection’s name. Limit of 255 characters.
    # @return [Types::String!]
    describe 'title' do
      let!(:query) { '{ collection { title } }' }
      let!(:result) { { data: { collection: { title: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # updatedAt: The date and time when the collection was last modified.
    # @return [Types::DateTime!]
    describe 'updatedAt' do
      let!(:query) { '{ collection { updatedAt } }' }
      let!(:result) { { data: { collection: { updatedAt: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
