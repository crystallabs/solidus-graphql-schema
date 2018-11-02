# frozen_string_literal: true
require 'spec_helper'

module Spree::GraphQL
  describe 'Types::MailingAddress' do
    #let!(:mailing_address) { create(:mailing_address) }
    #let!(:ctx) { { current_store: ::Spree::Store.where(default: true).first } }
    #let!(:variables) { }

    # address1: The first line of the address. Typically the street address or PO Box number. 
    # @return [Types::String]
    describe 'address1' do
      let!(:query) { '{ mailing_address { address1 } }' }
      let!(:result) { { data: { mailing_address: { address1: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # address2: The second line of the address. Typically the number of the apartment, suite, or unit. 
    # @return [Types::String]
    describe 'address2' do
      let!(:query) { '{ mailing_address { address2 } }' }
      let!(:result) { { data: { mailing_address: { address2: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # city: The name of the city, district, village, or town. 
    # @return [Types::String]
    describe 'city' do
      let!(:query) { '{ mailing_address { city } }' }
      let!(:result) { { data: { mailing_address: { city: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # company: The name of the customer's company or organization. 
    # @return [Types::String]
    describe 'company' do
      let!(:query) { '{ mailing_address { company } }' }
      let!(:result) { { data: { mailing_address: { company: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # country: The name of the country. 
    # @return [Types::String]
    describe 'country' do
      let!(:query) { '{ mailing_address { country } }' }
      let!(:result) { { data: { mailing_address: { country: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # countryCodeV2: The two-letter code for the country of the address. For example, US. 
    # @return [Types::CountryCode]
    describe 'countryCodeV2' do
      let!(:query) { '{ mailing_address { countryCodeV2 } }' }
      let!(:result) { { data: { mailing_address: { countryCodeV2: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # firstName: The first name of the customer.
    # @return [Types::String]
    describe 'firstName' do
      let!(:query) { '{ mailing_address { firstName } }' }
      let!(:result) { { data: { mailing_address: { firstName: '' }}} }
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
      let!(:query) { '{ mailing_address { formatted } }' }
      let!(:result) { { data: { mailing_address: { formatted: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # formattedArea: A comma-separated list of the values for city, province, and country.
    # @return [Types::String]
    describe 'formattedArea' do
      let!(:query) { '{ mailing_address { formattedArea } }' }
      let!(:result) { { data: { mailing_address: { formattedArea: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # id: Globally unique identifier.
    # @return [Types::ID!]
    describe 'id' do
      let!(:query) { '{ mailing_address { id } }' }
      let!(:result) { { data: { mailing_address: { id: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # lastName: The last name of the customer.
    # @return [Types::String]
    describe 'lastName' do
      let!(:query) { '{ mailing_address { lastName } }' }
      let!(:result) { { data: { mailing_address: { lastName: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # latitude: The latitude coordinate of the customer address.
    # @return [Types::Float]
    describe 'latitude' do
      let!(:query) { '{ mailing_address { latitude } }' }
      let!(:result) { { data: { mailing_address: { latitude: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # longitude: The longitude coordinate of the customer address.
    # @return [Types::Float]
    describe 'longitude' do
      let!(:query) { '{ mailing_address { longitude } }' }
      let!(:result) { { data: { mailing_address: { longitude: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # name: The full name of the customer, based on firstName and lastName. 
    # @return [Types::String]
    describe 'name' do
      let!(:query) { '{ mailing_address { name } }' }
      let!(:result) { { data: { mailing_address: { name: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # phone: A unique phone number for the customer. Formatted using E.164 standard. For example, _+16135551111_. 
    # @return [Types::String]
    describe 'phone' do
      let!(:query) { '{ mailing_address { phone } }' }
      let!(:result) { { data: { mailing_address: { phone: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # province: The region of the address, such as the province, state, or district.
    # @return [Types::String]
    describe 'province' do
      let!(:query) { '{ mailing_address { province } }' }
      let!(:result) { { data: { mailing_address: { province: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # provinceCode: The two-letter code for the region. For example, ON. 
    # @return [Types::String]
    describe 'provinceCode' do
      let!(:query) { '{ mailing_address { provinceCode } }' }
      let!(:result) { { data: { mailing_address: { provinceCode: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

    # zip: The zip or postal code of the address.
    # @return [Types::String]
    describe 'zip' do
      let!(:query) { '{ mailing_address { zip } }' }
      let!(:result) { { data: { mailing_address: { zip: '' }}} }
      #it 'succeeds' do
      #  execute
      #  expect(response_hash).to eq(result_hash)
      #end
    end

  end
end
