module Spree::GraphQL::Types::ShopPolicy
  include ::Spree::GraphQL::Interfaces::Node

  # Field: body: Policy text, maximum size of 64kb.
  # Returns: ::GraphQL::Types::String, null: false
  def body()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: id: Globally unique identifier.
  # Returns: ::GraphQL::Types::ID, null: false
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: title: Policy’s title.
  # Returns: ::GraphQL::Types::String, null: false
  def title()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: url: Public URL to the policy.
  # Returns: Types::URL, null: false
  def url()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

