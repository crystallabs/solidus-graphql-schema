module Spree::GraphQL::Types::Transaction


  # Field: amount: The amount of money that the transaction was for.
  # Returns: Types::Money, null: false
  def amount()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: kind: The kind of the transaction.
  # Returns: Types::TransactionKind, null: false
  def kind()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: status: The status of the transaction
  # Returns: Types::TransactionStatus, null: false
  def status()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: test: Whether the transaction was done in test mode or not
  # Returns: ::GraphQL::Types::Boolean, null: false
  def test()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

