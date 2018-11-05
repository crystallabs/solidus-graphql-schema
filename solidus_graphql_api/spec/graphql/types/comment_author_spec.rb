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
      let!(:query) {
        %q{
          query {
            commentAuthor {
              email
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
    # name: The author’s name.
    # @return [Types::String!]
    describe 'name' do
      let!(:query) {
        %q{
          query {
            commentAuthor {
              name
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