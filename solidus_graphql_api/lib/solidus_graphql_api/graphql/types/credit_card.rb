module Spree::GraphQL::Types::CreditCard
  # @graphql brand
  # @return [Types::String]
  def brand()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql expiryMonth
  # @return [Types::Int]
  def expiry_month()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql expiryYear
  # @return [Types::Int]
  def expiry_year()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql firstDigits
  # @return [Types::String]
  def first_digits()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql firstName
  # @return [Types::String]
  def first_name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql lastDigits
  # @return [Types::String]
  def last_digits()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql lastName
  # @return [Types::String]
  def last_name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql maskedNumber Masked credit card number with only the last 4 digits displayed
  # @return [Types::String]
  def masked_number()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

