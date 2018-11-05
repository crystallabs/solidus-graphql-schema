# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::ShopPolicy' do
    let!(:shop_policy) { create(:shop_policy) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # body: Policy text, maximum size of 64kb.
    # @return [Types::String!]
    describe 'body' do
      let!(:query) {
        %q{
          query {
            shopPolicy {
              body
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
            shopPolicy {
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
    # title: Policy’s title.
    # @return [Types::String!]
    describe 'title' do
      let!(:query) {
        %q{
          query {
            shopPolicy {
              title
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
    # url: Public URL to the policy.
    # @return [Types::URL!]
    describe 'url' do
      let!(:query) {
        %q{
          query {
            shopPolicy {
              url
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