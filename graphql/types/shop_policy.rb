module Spree::GraphQL::Types::ShopPolicy
  include ::Spree::GraphQL::Interfaces::Node

  # Policy text, maximum size of 64kb.
  # Returns: ::GraphQL::Types::String, null: false
  def body()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Globally unique identifier.
  # Returns: ::GraphQL::Types::ID, null: false
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Policy’s title.
  # Returns: ::GraphQL::Types::String, null: false
  def title()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Public URL to the policy.
  # Returns: Types::URL, null: false
  def url()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Policy that a merchant has configured for their store, such as their refund or privacy policy.
  # Returns: Types::URL, null: false
  def shop_policy()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

