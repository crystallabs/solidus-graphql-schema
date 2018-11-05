# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::ProductPriceRange' do
    let!(:product_price_range) { create(:product_price_range) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # maxVariantPrice: The highest variant's price.
    # @return [Types::MoneyV2!]
    describe 'maxVariantPrice' do
      let!(:query) {
        %q{
          query {
            productPriceRange {
              maxVariantPrice {
                amount
                currencyCode
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
    # minVariantPrice: The lowest variant's price.
    # @return [Types::MoneyV2!]
    describe 'minVariantPrice' do
      let!(:query) {
        %q{
          query {
            productPriceRange {
              minVariantPrice {
                amount
                currencyCode
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
  end
end