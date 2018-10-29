module Spree::GraphQL::Types::CheckoutUserError
  include ::Spree::GraphQL::Interfaces::DisplayableError

  # Field: code: Error code to uniquely identify the error.
  # Args: 
  # Returns: Types::CheckoutErrorCode
  def code()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: field: Path to the input field which caused the error.
  # Args: 
  # Returns: [Types::String!]
  def field()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: message: The error message.
  # Args: 
  # Returns: Types::String!
  def message()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

