module Spree::GraphQL::Types::MailingAddress
  include ::Spree::GraphQL::Interfaces::Node

  # Field: address1: The first line of the address. Typically the street address or PO Box number. 
  # Args: 
  # Returns: ::GraphQL::Types::String, null: true
  def address1()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: address2: The second line of the address. Typically the number of the apartment, suite, or unit. 
  # Args: 
  # Returns: ::GraphQL::Types::String, null: true
  def address2()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: city: The name of the city, district, village, or town. 
  # Args: 
  # Returns: ::GraphQL::Types::String, null: true
  def city()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: company: The name of the customer's company or organization. 
  # Args: 
  # Returns: ::GraphQL::Types::String, null: true
  def company()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: country: The name of the country. 
  # Args: 
  # Returns: ::GraphQL::Types::String, null: true
  def country()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: countryCodeV2: The two-letter code for the country of the address. For example, US. 
  # Args: 
  # Returns: Types::CountryCode, null: true
  def country_code_v2()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: firstName: The first name of the customer.
  # Args: 
  # Returns: ::GraphQL::Types::String, null: true
  def first_name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: formatted: A formatted version of the address, customized by the provided arguments.
  # Args: with_name = false, with_company = true
  # Returns: [::GraphQL::Types::String], null: false
  def formatted(with_name:, with_company:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: formattedArea: A comma-separated list of the values for city, province, and country.
  # Args: 
  # Returns: ::GraphQL::Types::String, null: true
  def formatted_area()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: id: Globally unique identifier.
  # Args: 
  # Returns: ::GraphQL::Types::ID, null: false
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: lastName: The last name of the customer.
  # Args: 
  # Returns: ::GraphQL::Types::String, null: true
  def last_name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: latitude: The latitude coordinate of the customer address.
  # Args: 
  # Returns: ::GraphQL::Types::Float, null: true
  def latitude()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: longitude: The longitude coordinate of the customer address.
  # Args: 
  # Returns: ::GraphQL::Types::Float, null: true
  def longitude()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: name: The full name of the customer, based on firstName and lastName. 
  # Args: 
  # Returns: ::GraphQL::Types::String, null: true
  def name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: phone: A unique phone number for the customer. Formatted using E.164 standard. For example, _+16135551111_. 
  # Args: 
  # Returns: ::GraphQL::Types::String, null: true
  def phone()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: province: The region of the address, such as the province, state, or district.
  # Args: 
  # Returns: ::GraphQL::Types::String, null: true
  def province()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: provinceCode: The two-letter code for the region. For example, ON. 
  # Args: 
  # Returns: ::GraphQL::Types::String, null: true
  def province_code()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: zip: The zip or postal code of the address.
  # Args: 
  # Returns: ::GraphQL::Types::String, null: true
  def zip()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

