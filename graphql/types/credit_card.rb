module Spree::GraphQL::Types::CreditCard


  # Field: brand
  # Returns: ::GraphQL::Types::String, null: true
  def brand()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: expiryMonth
  # Returns: ::GraphQL::Types::Int, null: true
  def expiry_month()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: expiryYear
  # Returns: ::GraphQL::Types::Int, null: true
  def expiry_year()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: firstDigits
  # Returns: ::GraphQL::Types::String, null: true
  def first_digits()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: firstName
  # Returns: ::GraphQL::Types::String, null: true
  def first_name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: lastDigits
  # Returns: ::GraphQL::Types::String, null: true
  def last_digits()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: lastName
  # Returns: ::GraphQL::Types::String, null: true
  def last_name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: maskedNumber: Masked credit card number with only the last 4 digits displayed
  # Returns: ::GraphQL::Types::String, null: true
  def masked_number()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

