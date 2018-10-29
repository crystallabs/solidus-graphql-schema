module Spree::GraphQL::Types::ShopPolicy
  include ::Spree::GraphQL::Interfaces::Node

  # @graphql body Policy text, maximum size of 64kb.
  # @return [Types::String!]
  def body()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql id Globally unique identifier.
  # @return [Types::ID!]
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql title Policy’s title.
  # @return [Types::String!]
  def title()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql url Public URL to the policy.
  # @return [Types::URL!]
  def url()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

