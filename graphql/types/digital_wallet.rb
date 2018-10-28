module Spree::GraphQL::Types::DigitalWallet


  # Digital wallet, such as Apple Pay, which can be used for accelerated checkouts.
  # Returns: 
  def digital_wallet()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

