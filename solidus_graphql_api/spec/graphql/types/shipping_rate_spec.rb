# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::ShippingRate' do
    let!(:shipping_rate) { create(:shipping_rate) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # handle: Human-readable unique identifier for this shipping rate.
    # @return [Types::String!]
    describe 'handle' do
      let!(:query) {
        %q{
          query {
            shippingRate {
              handle
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
    # price: Price of this shipping rate.
    # @return [Types::Money!]
    describe 'price' do
      let!(:query) {
        %q{
          query {
            shippingRate {
              price
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
    # title: Title of this shipping rate.
    # @return [Types::String!]
    describe 'title' do
      let!(:query) {
        %q{
          query {
            shippingRate {
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
  end
end