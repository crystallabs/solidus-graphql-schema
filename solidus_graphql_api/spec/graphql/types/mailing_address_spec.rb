# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::MailingAddress' do
    let!(:mailing_address) { create(:mailing_address) }
    let!(:ctx) { { current_store: current_store } }
    let!(:variables) { }

    # address1: The first line of the address. Typically the street address or PO Box number.
    # @return [Types::String]
    describe 'address1' do
      let!(:query) {
        %q{
          query {
            mailingAddress {
              address1
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
    # address2: The second line of the address. Typically the number of the apartment, suite, or unit.
    # @return [Types::String]
    describe 'address2' do
      let!(:query) {
        %q{
          query {
            mailingAddress {
              address2
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
    # city: The name of the city, district, village, or town.
    # @return [Types::String]
    describe 'city' do
      let!(:query) {
        %q{
          query {
            mailingAddress {
              city
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
    # company: The name of the customer's company or organization.
    # @return [Types::String]
    describe 'company' do
      let!(:query) {
        %q{
          query {
            mailingAddress {
              company
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
    # country: The name of the country.
    # @return [Types::String]
    describe 'country' do
      let!(:query) {
        %q{
          query {
            mailingAddress {
              country
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
    # countryCodeV2: The two-letter code for the country of the address. For example, US.
    # @return [Types::CountryCode]
    describe 'countryCodeV2' do
      let!(:query) {
        %q{
          query {
            mailingAddress {
              countryCodeV2
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
    # firstName: The first name of the customer.
    # @return [Types::String]
    describe 'firstName' do
      let!(:query) {
        %q{
          query {
            mailingAddress {
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
    # formatted: A formatted version of the address, customized by the provided arguments.
    # @param with_name [Types::Boolean] (false)
    # @param with_company [Types::Boolean] (true)
    # @return [[Types::String!]!]
    describe 'formatted' do
      let!(:query) {
        %q{
          query {
            mailingAddress {
              formatted(
                withName: false,
                withCompany: true
              )
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
    # formattedArea: A comma-separated list of the values for city, province, and country.
    # @return [Types::String]
    describe 'formattedArea' do
      let!(:query) {
        %q{
          query {
            mailingAddress {
              formattedArea
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
            mailingAddress {
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
    # lastName: The last name of the customer.
    # @return [Types::String]
    describe 'lastName' do
      let!(:query) {
        %q{
          query {
            mailingAddress {
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
    # latitude: The latitude coordinate of the customer address.
    # @return [Types::Float]
    describe 'latitude' do
      let!(:query) {
        %q{
          query {
            mailingAddress {
              latitude
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
    # longitude: The longitude coordinate of the customer address.
    # @return [Types::Float]
    describe 'longitude' do
      let!(:query) {
        %q{
          query {
            mailingAddress {
              longitude
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
    # name: The full name of the customer, based on firstName and lastName.
    # @return [Types::String]
    describe 'name' do
      let!(:query) {
        %q{
          query {
            mailingAddress {
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
    # phone: A unique phone number for the customer. Formatted using E.164 standard. For example, _+16135551111_.
    # @return [Types::String]
    describe 'phone' do
      let!(:query) {
        %q{
          query {
            mailingAddress {
              phone
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
    # province: The region of the address, such as the province, state, or district.
    # @return [Types::String]
    describe 'province' do
      let!(:query) {
        %q{
          query {
            mailingAddress {
              province
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
    # provinceCode: The two-letter code for the region. For example, ON.
    # @return [Types::String]
    describe 'provinceCode' do
      let!(:query) {
        %q{
          query {
            mailingAddress {
              provinceCode
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
    # zip: The zip or postal code of the address.
    # @return [Types::String]
    describe 'zip' do
      let!(:query) {
        %q{
          query {
            mailingAddress {
              zip
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