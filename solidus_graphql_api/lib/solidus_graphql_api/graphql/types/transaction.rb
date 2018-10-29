module Spree::GraphQL::Types::Transaction


  # Field: amount: The amount of money that the transaction was for.
  # Args: 
  # Returns: Types::Money!
  def amount()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: kind: The kind of the transaction.
  # Args: 
  # Returns: Types::TransactionKind!
  def kind()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: status: The status of the transaction
  # Args: 
  # Returns: Types::TransactionStatus!
  def status()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: test: Whether the transaction was done in test mode or not
  # Args: 
  # Returns: Types::Boolean!
  def test()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

