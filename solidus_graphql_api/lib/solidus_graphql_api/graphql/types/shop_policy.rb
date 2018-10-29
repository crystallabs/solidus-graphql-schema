module Spree::GraphQL::Types::ShopPolicy
  include ::Spree::GraphQL::Interfaces::Node

  # Field: body: Policy text, maximum size of 64kb.
  # Args: 
  # Returns: Types::String!
  def body()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: id: Globally unique identifier.
  # Args: 
  # Returns: Types::ID!
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: title: Policy’s title.
  # Args: 
  # Returns: Types::String!
  def title()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: url: Public URL to the policy.
  # Args: 
  # Returns: Types::URL!
  def url()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

