# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::QueryRoot' do
    #let!(:query_root) { create(:query_root) }
    #let!(:ctx) { { current_store: ::Spree::Store.where(default: true).first } }
    #let!(:variables) { }

    # articles: List of the shop's articles.
    # @param reverse [Types::Boolean] (false)
    # @param sort_key [Types::ArticleSortKeys] ('ID')
    # @param query [Types::String]
    # @return [Types::Article.connection_type!]
    describe 'articles' do
      let!(:query) { '{ query_root { articles } }' }
      let!(:result) { { data: { query_root: { articles: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # blogByHandle: Find a blog by its handle.
    # @param handle [Types::String!]
    # @return [Types::Blog]
    describe 'blogByHandle' do
      let!(:query) { '{ query_root { blogByHandle } }' }
      let!(:result) { { data: { query_root: { blogByHandle: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # blogs: List of the shop's blogs.
    # @param reverse [Types::Boolean] (false)
    # @param sort_key [Types::BlogSortKeys] ('ID')
    # @param query [Types::String]
    # @return [Types::Blog.connection_type!]
    describe 'blogs' do
      let!(:query) { '{ query_root { blogs } }' }
      let!(:result) { { data: { query_root: { blogs: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # customer
    # @param customer_access_token [Types::String!]
    # @return [Types::Customer]
    describe 'customer' do
      let!(:query) { '{ query_root { customer } }' }
      let!(:result) { { data: { query_root: { customer: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # node
    # @param id [Types::ID!]
    # @return [Interfaces::Node]
    describe 'node' do
      let!(:query) { '{ query_root { node } }' }
      let!(:result) { { data: { query_root: { node: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # nodes
    # @param ids [[Types::ID!]!]
    # @return [[Interfaces::Node]!]
    describe 'nodes' do
      let!(:query) { '{ query_root { nodes } }' }
      let!(:result) { { data: { query_root: { nodes: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # shop
    # @return [Types::Shop!]
    describe 'shop' do
      let!(:query) { '{ query_root { shop } }' }
      let!(:result) { { data: { query_root: { shop: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
