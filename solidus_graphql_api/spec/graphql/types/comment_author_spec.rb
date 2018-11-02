# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::CommentAuthor' do
    let!(:comment_author) { create(:comment_author) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # email: The author's email.
    # @return [Types::String!]
    describe 'email' do
      let!(:query) { '{ comment_author { email } }' }
      let!(:result) { { data: { comment_author: { email: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # name: The author’s name.
    # @return [Types::String!]
    describe 'name' do
      let!(:query) { '{ comment_author { name } }' }
      let!(:result) { { data: { comment_author: { name: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
