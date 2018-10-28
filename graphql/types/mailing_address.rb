module Spree::GraphQL::Types::MailingAddress
  include ::Spree::GraphQL::Interfaces::Node

  # The first line of the address. Typically the street address or PO Box number. 
  # Returns: ::GraphQL::Types::String, null: true
  def address1()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The second line of the address. Typically the number of the apartment, suite, or unit. 
  # Returns: ::GraphQL::Types::String, null: true
  def address2()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The name of the city, district, village, or town. 
  # Returns: ::GraphQL::Types::String, null: true
  def city()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The name of the customer's company or organization. 
  # Returns: ::GraphQL::Types::String, null: true
  def company()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The name of the country. 
  # Returns: ::GraphQL::Types::String, null: true
  def country()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The two-letter code for the country of the address. For example, US. 
  # Returns: Types::CountryCode, null: true
  def country_code_v2()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The first name of the customer.
  # Returns: ::GraphQL::Types::String, null: true
  def first_name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # A formatted version of the address, customized by the provided arguments.
  # Returns: [::GraphQL::Types::String], null: false
  def formatted(with_name:, with_company:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # A comma-separated list of the values for city, province, and country.
  # Returns: ::GraphQL::Types::String, null: true
  def formatted_area()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Globally unique identifier.
  # Returns: ::GraphQL::Types::ID, null: false
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The last name of the customer.
  # Returns: ::GraphQL::Types::String, null: true
  def last_name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The latitude coordinate of the customer address.
  # Returns: ::GraphQL::Types::Float, null: true
  def latitude()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The longitude coordinate of the customer address.
  # Returns: ::GraphQL::Types::Float, null: true
  def longitude()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The full name of the customer, based on firstName and lastName. 
  # Returns: ::GraphQL::Types::String, null: true
  def name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # A unique phone number for the customer. Formatted using E.164 standard. For example, _+16135551111_. 
  # Returns: ::GraphQL::Types::String, null: true
  def phone()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The region of the address, such as the province, state, or district.
  # Returns: ::GraphQL::Types::String, null: true
  def province()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The two-letter code for the region. For example, ON. 
  # Returns: ::GraphQL::Types::String, null: true
  def province_code()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The zip or postal code of the address.
  # Returns: ::GraphQL::Types::String, null: true
  def zip()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Represents a mailing address for customers and shipping.
  # Returns: ::GraphQL::Types::String, null: true
  def mailing_address()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

