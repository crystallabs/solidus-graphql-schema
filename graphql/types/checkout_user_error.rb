module Spree::GraphQL::Types::CheckoutUserError
  include ::Spree::GraphQL::Interfaces::DisplayableError

  # Field: code: Error code to uniquely identify the error.
  # Args: 
  # Returns: Types::CheckoutErrorCode, null: true
  def code()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: field: Path to the input field which caused the error.
  # Args: 
  # Returns: [::GraphQL::Types::String], null: true
  def field()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: message: The error message.
  # Args: 
  # Returns: ::GraphQL::Types::String, null: false
  def message()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

