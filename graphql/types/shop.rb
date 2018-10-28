module Spree::GraphQL::Types::Shop


  # Find a collection by its handle.
  # Returns: Types::Collection, null: true
  def collection_by_handle(handle:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # List of the shop’s collections.
  # Returns: Types::Collection.connection_type, null: false
  def collections(reverse:, sort_key:, query:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # A description of the shop.
  # Returns: ::GraphQL::Types::String, null: true
  def description()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # A string representing the way currency is formatted when the currency isn’t specified.
  # Returns: ::GraphQL::Types::String, null: false
  def money_format()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The shop’s name.
  # Returns: ::GraphQL::Types::String, null: false
  def name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Settings related to payments.
  # Returns: Types::PaymentSettings, null: false
  def payment_settings()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The shop’s primary domain.
  # Returns: Types::Domain, null: false
  def primary_domain()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The shop’s privacy policy.
  # Returns: Types::ShopPolicy, null: true
  def privacy_policy()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Find a product by its handle.
  # Returns: Types::Product, null: true
  def product_by_handle(handle:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # List of the shop’s product types.
  # Returns: ::GraphQL::Types::String.connection_type, null: false
  def product_types()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # List of the shop’s products.
  # Returns: Types::Product.connection_type, null: false
  def products(reverse:, sort_key:, query:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The shop’s refund policy.
  # Returns: Types::ShopPolicy, null: true
  def refund_policy()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Countries that the shop ships to.
  # Returns: [Types::CountryCode], null: false
  def ships_to_countries()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The shop’s terms of service.
  # Returns: Types::ShopPolicy, null: true
  def terms_of_service()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Shop represents a collection of the general settings and information about the shop.
  # Returns: Types::ShopPolicy, null: true
  def shop()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

