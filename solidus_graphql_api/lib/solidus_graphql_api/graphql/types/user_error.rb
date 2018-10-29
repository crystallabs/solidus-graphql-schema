module Spree::GraphQL::Types::UserError
  include ::Spree::GraphQL::Interfaces::DisplayableError

  # @graphql field Path to the input field which caused the error.
  # @return [[Types::String!]]
  def field()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql message The error message.
  # @return [Types::String!]
  def message()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

