module Spree::GraphQL::Types::AppliedGiftCard
  include ::Spree::GraphQL::Interfaces::Node

  # @graphql amountUsed The amount that was used taken from the Gift Card by applying it.
  # @return [Types::Money!]
  def amount_used()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql balance The amount left on the Gift Card.
  # @return [Types::Money!]
  def balance()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql id Globally unique identifier.
  # @return [Types::ID!]
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql lastCharacters The last characters of the Gift Card code
  # @return [Types::String!]
  def last_characters()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

