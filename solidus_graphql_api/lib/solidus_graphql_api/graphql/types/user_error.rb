module Spree::GraphQL::Types::UserError
  include ::Spree::GraphQL::Interfaces::DisplayableError

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

