module Spree::GraphQL::Types::Shop


  # Field: collectionByHandle: Find a collection by its handle.
  # Returns: Types::Collection, null: true
  def collection_by_handle(handle:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: collections: List of the shop’s collections.
  # Defaults: reverse = false, sort_key = 'ID'
  # Returns: Types::Collection.connection_type, null: false
  def collections(reverse:, sort_key:, query:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: description: A description of the shop.
  # Returns: ::GraphQL::Types::String, null: true
  def description()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: moneyFormat: A string representing the way currency is formatted when the currency isn’t specified.
  # Returns: ::GraphQL::Types::String, null: false
  def money_format()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: name: The shop’s name.
  # Returns: ::GraphQL::Types::String, null: false
  def name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: paymentSettings: Settings related to payments.
  # Returns: Types::PaymentSettings, null: false
  def payment_settings()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: primaryDomain: The shop’s primary domain.
  # Returns: Types::Domain, null: false
  def primary_domain()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: privacyPolicy: The shop’s privacy policy.
  # Returns: Types::ShopPolicy, null: true
  def privacy_policy()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: productByHandle: Find a product by its handle.
  # Returns: Types::Product, null: true
  def product_by_handle(handle:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: productTypes: List of the shop’s product types.
  # Returns: ::GraphQL::Types::String.connection_type, null: false
  def product_types()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: products: List of the shop’s products.
  # Defaults: reverse = false, sort_key = 'ID'
  # Returns: Types::Product.connection_type, null: false
  def products(reverse:, sort_key:, query:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: refundPolicy: The shop’s refund policy.
  # Returns: Types::ShopPolicy, null: true
  def refund_policy()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: shipsToCountries: Countries that the shop ships to.
  # Returns: [Types::CountryCode], null: false
  def ships_to_countries()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: termsOfService: The shop’s terms of service.
  # Returns: Types::ShopPolicy, null: true
  def terms_of_service()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

