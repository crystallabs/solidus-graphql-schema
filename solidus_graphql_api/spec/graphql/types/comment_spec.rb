# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::Comment' do
    #let!(:comment) { create(:comment) }
    #let!(:ctx) { { current_store: ::Spree::Store.where(default: true).first } }
    #let!(:variables) { }

    # author: The comment’s author.
    # @return [Types::CommentAuthor!]
    describe 'author' do
      let!(:query) { '{ comment { author } }' }
      let!(:result) { { data: { comment: { author: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # content: Stripped content of the comment, single line with HTML tags removed.
    # @param truncate_at [Types::Int]
    # @return [Types::String!]
    describe 'content' do
      let!(:query) { '{ comment { content } }' }
      let!(:result) { { data: { comment: { content: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # contentHtml: The content of the comment, complete with HTML formatting.
    # @return [Types::HTML!]
    describe 'contentHtml' do
      let!(:query) { '{ comment { contentHtml } }' }
      let!(:result) { { data: { comment: { contentHtml: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # id: Globally unique identifier.
    # @return [Types::ID!]
    describe 'id' do
      let!(:query) { '{ comment { id } }' }
      let!(:result) { { data: { comment: { id: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
