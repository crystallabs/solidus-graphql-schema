module Spree::GraphQL::Types::CustomerUserError
  include ::Spree::GraphQL::Interfaces::DisplayableError

  # Error code to uniquely identify the error.
  # Returns: Types::CustomerErrorCode, null: true
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

  # Represents an error that happens during execution of a customer mutation.
  # Returns: ::GraphQL::Types::String, null: false
  def customer_user_error()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

