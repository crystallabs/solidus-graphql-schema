# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::Comment' do
    let!(:comment) { create(:comment) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # author: The comment’s author.
    # @return [Types::CommentAuthor!]
    describe 'author' do
      let!(:query) {
        %q{
          query {
            comment {
              author {
                email
                name
              }
            }
          }
        }
      }
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
    # content: Stripped content of the comment, single line with HTML tags removed.
    # @param truncate_at [Types::Int]
    # @return [Types::String!]
    describe 'content' do
      let!(:query) {
        %q{
          query {
            comment {
              content(truncateAt: Int)
            }
          }
        }
      }
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
    # contentHtml: The content of the comment, complete with HTML formatting.
    # @return [Types::HTML!]
    describe 'contentHtml' do
      let!(:query) {
        %q{
          query {
            comment {
              contentHtml
            }
          }
        }
      }
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
    # id: Globally unique identifier.
    # @return [Types::ID!]
    describe 'id' do
      let!(:query) {
        %q{
          query {
            comment {
              id
            }
          }
        }
      }
      let!(:result) { result_body(type, helper) }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end
  end
end