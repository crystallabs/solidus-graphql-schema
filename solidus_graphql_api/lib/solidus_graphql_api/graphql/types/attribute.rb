module Spree::GraphQL::Types::Attribute


  # @graphql key Key or name of the attribute.
  # @return [Types::String!]
  def key()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql value Value of the attribute.
  # @return [Types::String]
  def value()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

