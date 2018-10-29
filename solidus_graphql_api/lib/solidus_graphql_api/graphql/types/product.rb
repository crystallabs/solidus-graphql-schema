module Spree::GraphQL::Types::Product
  include ::Spree::GraphQL::Interfaces::Node

  # Field: availableForSale: Indicates if at least one product variant is available for sale.
  # Args: 
  # Returns: ::GraphQL::Types::Boolean, null: false
  def available_for_sale()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: collections: List of collections a product belongs to.
  # Args: reverse = false
  # Returns: Types::Collection.connection_type, null: false
  def collections(reverse:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: createdAt: The date and time when the product was created.
  # Args: 
  # Returns: Types::DateTime, null: false
  def created_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: description: Stripped description of the product, single line with HTML tags removed.
  # Args: truncate_at
  # Returns: ::GraphQL::Types::String, null: false
  def description(truncate_at:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: descriptionHtml: The description of the product, complete with HTML formatting.
  # Args: 
  # Returns: Types::HTML, null: false
  def description_html()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: handle: A human-friendly unique string for the Product automatically generated from its title. They are used by the Liquid templating language to refer to objects. 
  # Args: 
  # Returns: ::GraphQL::Types::String, null: false
  def handle()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: id: Globally unique identifier.
  # Args: 
  # Returns: ::GraphQL::Types::ID, null: false
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: images: List of images associated with the product.
  # Args: reverse = false, sort_key = 'POSITION', max_width, max_height, crop, scale = 1
  # Returns: Types::Image.connection_type, null: false
  def images(reverse:, sort_key:, max_width:, max_height:, crop:, scale:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: onlineStoreUrl: The online store URL for the product. A value of `null` indicates that the product is not published to the Online Store sales channel. 
  # Args: 
  # Returns: Types::URL, null: true
  def online_store_url()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: options: List of custom product options (maximum of 3 per product).
  # Args: first
  # Returns: [Types::ProductOption], null: false
  def options(first:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: priceRange: The price range.
  # Args: 
  # Returns: Types::ProductPriceRange, null: false
  def price_range()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: productType: A categorization that a product can be tagged with, commonly used for filtering and searching.
  # Args: 
  # Returns: ::GraphQL::Types::String, null: false
  def product_type()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: publishedAt: The date and time when the product was published to the channel.
  # Args: 
  # Returns: Types::DateTime, null: false
  def published_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: tags: A categorization that a product can be tagged with, commonly used for filtering and searching. Each comma-separated tag has a character limit of 255. 
  # Args: 
  # Returns: [::GraphQL::Types::String], null: false
  def tags()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: title: The product’s title.
  # Args: 
  # Returns: ::GraphQL::Types::String, null: false
  def title()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: updatedAt: The date and time when the product was last modified.
  # Args: 
  # Returns: Types::DateTime, null: false
  def updated_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: variantBySelectedOptions: Find a product’s variant based on its selected options. This is useful for converting a user’s selection of product options into a single matching variant. If there is not a variant for the selected options, `null` will be returned. 
  # Args: selected_options
  # Returns: Types::ProductVariant, null: true
  def variant_by_selected_options(selected_options:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: variants: List of the product’s variants.
  # Args: reverse = false, sort_key = 'POSITION'
  # Returns: Types::ProductVariant.connection_type, null: false
  def variants(reverse:, sort_key:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: vendor: The product’s vendor name.
  # Args: 
  # Returns: ::GraphQL::Types::String, null: false
  def vendor()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

