module Spree::GraphQL::Types::UserError
  include ::Spree::GraphQL::Interfaces::DisplayableError

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

