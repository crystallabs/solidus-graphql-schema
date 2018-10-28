module Spree::GraphQL::Types::CheckoutUserError
  include ::Spree::GraphQL::Interfaces::DisplayableError

  # Error code to uniquely identify the error.
  # Returns: Types::CheckoutErrorCode, null: true
  def code()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Path to the input field which caused the error.
  # Returns: [::GraphQL::Types::String], null: true
  def field()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The error message.
  # Returns: ::GraphQL::Types::String, null: false
  def message()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Represents an error that happens during execution of a checkout mutation.
  # Returns: ::GraphQL::Types::String, null: false
  def checkout_user_error()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

