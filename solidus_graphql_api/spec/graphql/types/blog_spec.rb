# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::Blog' do
    #let!(:blog) { create(:blog) }
    #let!(:ctx) { { current_store: ::Spree::Store.where(default: true).first } }
    #let!(:variables) { }

    # articleByHandle: Find an article by its handle.
    # @param handle [Types::String!]
    # @return [Types::Article]
    describe 'articleByHandle' do
      let!(:query) { '{ blog { articleByHandle } }' }
      let!(:result) { { data: { blog: { articleByHandle: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # articles: List of the blog's articles.
    # @param reverse [Types::Boolean] (false)
    # @return [Types::Article.connection_type!]
    describe 'articles' do
      let!(:query) { '{ blog { articles } }' }
      let!(:result) { { data: { blog: { articles: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # authors: The authors who have contributed to the blog.
    # @return [[Types::ArticleAuthor!]!]
    describe 'authors' do
      let!(:query) { '{ blog { authors } }' }
      let!(:result) { { data: { blog: { authors: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # handle: A human-friendly unique string for the Blog automatically generated from its title. 
    # @return [Types::String!]
    describe 'handle' do
      let!(:query) { '{ blog { handle } }' }
      let!(:result) { { data: { blog: { handle: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # id: Globally unique identifier.
    # @return [Types::ID!]
    describe 'id' do
      let!(:query) { '{ blog { id } }' }
      let!(:result) { { data: { blog: { id: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # title: The blogs’s title.
    # @return [Types::String!]
    describe 'title' do
      let!(:query) { '{ blog { title } }' }
      let!(:result) { { data: { blog: { title: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # url: The url pointing to the blog accessible from the web.
    # @return [Types::URL!]
    describe 'url' do
      let!(:query) { '{ blog { url } }' }
      let!(:result) { { data: { blog: { url: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
