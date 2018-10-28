module Spree::GraphQL::Types::UserError
  include ::Spree::GraphQL::Interfaces::DisplayableError

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

  # Represents an error in the input of a mutation.
  # Returns: ::GraphQL::Types::String, null: false
  def user_error()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

