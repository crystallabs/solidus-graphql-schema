module Spree::GraphQL::Types::Product
  include ::Spree::GraphQL::Interfaces::Node

  # Indicates if at least one product variant is available for sale.
  # Returns: ::GraphQL::Types::Boolean, null: false
  def available_for_sale()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # List of collections a product belongs to.
  # Returns: Types::Collection.connection_type, null: false
  def collections(reverse:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The date and time when the product was created.
  # Returns: Types::DateTime, null: false
  def created_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Stripped description of the product, single line with HTML tags removed.
  # Returns: ::GraphQL::Types::String, null: false
  def description(truncate_at:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The description of the product, complete with HTML formatting.
  # Returns: Types::HTML, null: false
  def description_html()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # A human-friendly unique string for the Product automatically generated from its title. They are used by the Liquid templating language to refer to objects. 
  # Returns: ::GraphQL::Types::String, null: false
  def handle()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Globally unique identifier.
  # Returns: ::GraphQL::Types::ID, null: false
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # List of images associated with the product.
  # Returns: Types::Image.connection_type, null: false
  def images(reverse:, sort_key:, max_width:, max_height:, crop:, scale:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The online store URL for the product. A value of `null` indicates that the product is not published to the Online Store sales channel. 
  # Returns: Types::URL, null: true
  def online_store_url()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # List of custom product options (maximum of 3 per product).
  # Returns: [Types::ProductOption], null: false
  def options(first:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The price range.
  # Returns: Types::ProductPriceRange, null: false
  def price_range()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # A categorization that a product can be tagged with, commonly used for filtering and searching.
  # Returns: ::GraphQL::Types::String, null: false
  def product_type()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The date and time when the product was published to the channel.
  # Returns: Types::DateTime, null: false
  def published_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # A categorization that a product can be tagged with, commonly used for filtering and searching. Each comma-separated tag has a character limit of 255. 
  # Returns: [::GraphQL::Types::String], null: false
  def tags()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The product’s title.
  # Returns: ::GraphQL::Types::String, null: false
  def title()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The date and time when the product was last modified.
  # Returns: Types::DateTime, null: false
  def updated_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Find a product’s variant based on its selected options. This is useful for converting a user’s selection of product options into a single matching variant. If there is not a variant for the selected options, `null` will be returned. 
  # Returns: Types::ProductVariant, null: true
  def variant_by_selected_options(selected_options:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # List of the product’s variants.
  # Returns: Types::ProductVariant.connection_type, null: false
  def variants(reverse:, sort_key:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The product’s vendor name.
  # Returns: ::GraphQL::Types::String, null: false
  def vendor()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # A product represents an individual item for sale in a Store store. Products are often physical, but they don't have to be. For example, a digital download (such as a movie, music or ebook file) also qualifies as a product, as do services (such as equipment rental, work for hire, customization of another product or an extended warranty).
  # Returns: ::GraphQL::Types::String, null: false
  def product()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

