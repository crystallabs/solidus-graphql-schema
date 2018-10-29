module Spree::GraphQL::Types::Shop


  # Field: collectionByHandle: Find a collection by its handle.
  # Args: handle
  # Returns: Types::Collection, null: true
  def collection_by_handle(handle:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: collections: List of the shop’s collections.
  # Args: reverse = false, sort_key = 'ID', query
  # Returns: Types::Collection.connection_type, null: false
  def collections(reverse:, sort_key:, query:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: description: A description of the shop.
  # Args: 
  # Returns: ::GraphQL::Types::String, null: true
  def description()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: moneyFormat: A string representing the way currency is formatted when the currency isn’t specified.
  # Args: 
  # Returns: ::GraphQL::Types::String, null: false
  def money_format()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: name: The shop’s name.
  # Args: 
  # Returns: ::GraphQL::Types::String, null: false
  def name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: paymentSettings: Settings related to payments.
  # Args: 
  # Returns: Types::PaymentSettings, null: false
  def payment_settings()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: primaryDomain: The shop’s primary domain.
  # Args: 
  # Returns: Types::Domain, null: false
  def primary_domain()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: privacyPolicy: The shop’s privacy policy.
  # Args: 
  # Returns: Types::ShopPolicy, null: true
  def privacy_policy()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: productByHandle: Find a product by its handle.
  # Args: handle
  # Returns: Types::Product, null: true
  def product_by_handle(handle:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: productTypes: List of the shop’s product types.
  # Args: 
  # Returns: ::GraphQL::Types::String.connection_type, null: false
  def product_types()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: products: List of the shop’s products.
  # Args: reverse = false, sort_key = 'ID', query
  # Returns: Types::Product.connection_type, null: false
  def products(reverse:, sort_key:, query:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: refundPolicy: The shop’s refund policy.
  # Args: 
  # Returns: Types::ShopPolicy, null: true
  def refund_policy()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: shipsToCountries: Countries that the shop ships to.
  # Args: 
  # Returns: [Types::CountryCode], null: false
  def ships_to_countries()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: termsOfService: The shop’s terms of service.
  # Args: 
  # Returns: Types::ShopPolicy, null: true
  def terms_of_service()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

