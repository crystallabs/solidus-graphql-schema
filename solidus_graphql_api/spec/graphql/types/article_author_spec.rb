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
      let!(:query) {
        %q{
          query {
            articleAuthor {
              bio
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
    # email: The author’s email.
    # @return [Types::String!]
    describe 'email' do
      let!(:query) {
        %q{
          query {
            articleAuthor {
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
    # firstName: The author's first name.
    # @return [Types::String!]
    describe 'firstName' do
      let!(:query) {
        %q{
          query {
            articleAuthor {
              firstName
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
    # lastName: The author's last name.
    # @return [Types::String!]
    describe 'lastName' do
      let!(:query) {
        %q{
          query {
            articleAuthor {
              lastName
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
    # name: The author's full name.
    # @return [Types::String!]
    describe 'name' do
      let!(:query) {
        %q{
          query {
            articleAuthor {
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