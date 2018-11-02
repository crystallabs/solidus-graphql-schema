# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::ArticleAuthor' do
    let!(:article_author) { create(:article_author) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # bio: The author's bio.
    # @return [Types::String]
    describe 'bio' do
      let!(:query) { '{ article_author { bio } }' }
      let!(:result) { { data: { article_author: { bio: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # email: The author’s email.
    # @return [Types::String!]
    describe 'email' do
      let!(:query) { '{ article_author { email } }' }
      let!(:result) { { data: { article_author: { email: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # firstName: The author's first name.
    # @return [Types::String!]
    describe 'firstName' do
      let!(:query) { '{ article_author { firstName } }' }
      let!(:result) { { data: { article_author: { firstName: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # lastName: The author's last name.
    # @return [Types::String!]
    describe 'lastName' do
      let!(:query) { '{ article_author { lastName } }' }
      let!(:result) { { data: { article_author: { lastName: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # name: The author's full name.
    # @return [Types::String!]
    describe 'name' do
      let!(:query) { '{ article_author { name } }' }
      let!(:result) { { data: { article_author: { name: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
