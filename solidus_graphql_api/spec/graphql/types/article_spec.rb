# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::Article' do
    #let!(:article) { create(:article) }
    #let!(:ctx) { { current_store: ::Spree::Store.where(default: true).first } }
    #let!(:variables) { }

    # authorV2: The article's author.
    # @return [Types::ArticleAuthor]
    describe 'authorV2' do
      let!(:query) { '{ article { authorV2 } }' }
      let!(:result) { { data: { article: { authorV2: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # blog: The blog that the article belongs to.
    # @return [Types::Blog!]
    describe 'blog' do
      let!(:query) { '{ article { blog } }' }
      let!(:result) { { data: { article: { blog: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # comments: List of comments posted on the article.
    # @param reverse [Types::Boolean] (false)
    # @return [Types::Comment.connection_type!]
    describe 'comments' do
      let!(:query) { '{ article { comments } }' }
      let!(:result) { { data: { article: { comments: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # content: Stripped content of the article, single line with HTML tags removed.
    # @param truncate_at [Types::Int]
    # @return [Types::String!]
    describe 'content' do
      let!(:query) { '{ article { content } }' }
      let!(:result) { { data: { article: { content: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # contentHtml: The content of the article, complete with HTML formatting.
    # @return [Types::HTML!]
    describe 'contentHtml' do
      let!(:query) { '{ article { contentHtml } }' }
      let!(:result) { { data: { article: { contentHtml: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # excerpt: Stripped excerpt of the article, single line with HTML tags removed.
    # @param truncate_at [Types::Int]
    # @return [Types::String]
    describe 'excerpt' do
      let!(:query) { '{ article { excerpt } }' }
      let!(:result) { { data: { article: { excerpt: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # excerptHtml: The excerpt of the article, complete with HTML formatting.
    # @return [Types::HTML]
    describe 'excerptHtml' do
      let!(:query) { '{ article { excerptHtml } }' }
      let!(:result) { { data: { article: { excerptHtml: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # handle: A human-friendly unique string for the Article automatically generated from its title. 
    # @return [Types::String!]
    describe 'handle' do
      let!(:query) { '{ article { handle } }' }
      let!(:result) { { data: { article: { handle: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # id: Globally unique identifier.
    # @return [Types::ID!]
    describe 'id' do
      let!(:query) { '{ article { id } }' }
      let!(:result) { { data: { article: { id: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # image: The image associated with the article.
    # @param max_width [Types::Int]
    # @param max_height [Types::Int]
    # @param crop [Types::CropRegion]
    # @param scale [Types::Int] (1)
    # @return [Types::Image]
    describe 'image' do
      let!(:query) { '{ article { image } }' }
      let!(:result) { { data: { article: { image: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # publishedAt: The date and time when the article was published.
    # @return [Types::DateTime!]
    describe 'publishedAt' do
      let!(:query) { '{ article { publishedAt } }' }
      let!(:result) { { data: { article: { publishedAt: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # tags: A categorization that a article can be tagged with.
    # @return [[Types::String!]!]
    describe 'tags' do
      let!(:query) { '{ article { tags } }' }
      let!(:result) { { data: { article: { tags: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # title: The article’s name.
    # @return [Types::String!]
    describe 'title' do
      let!(:query) { '{ article { title } }' }
      let!(:result) { { data: { article: { title: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # url: The url pointing to the article accessible from the web.
    # @return [Types::URL!]
    describe 'url' do
      let!(:query) { '{ article { url } }' }
      let!(:result) { { data: { article: { url: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
