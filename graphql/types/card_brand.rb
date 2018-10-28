module Spree::GraphQL::Types::CardBrand


  # Card brand, such as Visa or Mastercard, which can be used for payments.
  # Returns: 
  def card_brand()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

