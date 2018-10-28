module Spree::GraphQL::Types::AppliedGiftCard
  include ::Spree::GraphQL::Interfaces::Node

  # Field: amountUsed: The amount that was used taken from the Gift Card by applying it.
  # Returns: Types::Money, null: false
  def amount_used()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: balance: The amount left on the Gift Card.
  # Returns: Types::Money, null: false
  def balance()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: id: Globally unique identifier.
  # Returns: ::GraphQL::Types::ID, null: false
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: lastCharacters: The last characters of the Gift Card code
  # Returns: ::GraphQL::Types::String, null: false
  def last_characters()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

