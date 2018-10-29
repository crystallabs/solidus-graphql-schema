module Spree::GraphQL::Types::Product
  include ::Spree::GraphQL::Interfaces::Node

  # Field: availableForSale: Indicates if at least one product variant is available for sale.
  # Args: 
  # Returns: Types::Boolean!
  def available_for_sale()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: collections: List of collections a product belongs to.
  # Args: reverse : Types::Boolean = false
  # Returns: Types::Collection.connection_type!
  def collections(reverse:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: createdAt: The date and time when the product was created.
  # Args: 
  # Returns: Types::DateTime!
  def created_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: description: Stripped description of the product, single line with HTML tags removed.
  # Args: truncate_at : Types::Int
  # Returns: Types::String!
  def description(truncate_at:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: descriptionHtml: The description of the product, complete with HTML formatting.
  # Args: 
  # Returns: Types::HTML!
  def description_html()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: handle: A human-friendly unique string for the Product automatically generated from its title. They are used by the Liquid templating language to refer to objects. 
  # Args: 
  # Returns: Types::String!
  def handle()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: id: Globally unique identifier.
  # Args: 
  # Returns: Types::ID!
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: images: List of images associated with the product.
  # Args: reverse : Types::Boolean = false, sort_key : Types::ProductImageSortKeys = 'POSITION', max_width : Types::Int, max_height : Types::Int, crop : Types::CropRegion, scale : Types::Int = 1
  # Returns: Types::Image.connection_type!
  def images(reverse:, sort_key:, max_width:, max_height:, crop:, scale:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: onlineStoreUrl: The online store URL for the product. A value of `null` indicates that the product is not published to the Online Store sales channel. 
  # Args: 
  # Returns: Types::URL
  def online_store_url()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: options: List of custom product options (maximum of 3 per product).
  # Args: first : Types::Int
  # Returns: [Types::ProductOption!]!
  def options(first:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: priceRange: The price range.
  # Args: 
  # Returns: Types::ProductPriceRange!
  def price_range()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: productType: A categorization that a product can be tagged with, commonly used for filtering and searching.
  # Args: 
  # Returns: Types::String!
  def product_type()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: publishedAt: The date and time when the product was published to the channel.
  # Args: 
  # Returns: Types::DateTime!
  def published_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: tags: A categorization that a product can be tagged with, commonly used for filtering and searching. Each comma-separated tag has a character limit of 255. 
  # Args: 
  # Returns: [Types::String!]!
  def tags()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: title: The product’s title.
  # Args: 
  # Returns: Types::String!
  def title()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: updatedAt: The date and time when the product was last modified.
  # Args: 
  # Returns: Types::DateTime!
  def updated_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: variantBySelectedOptions: Find a product’s variant based on its selected options. This is useful for converting a user’s selection of product options into a single matching variant. If there is not a variant for the selected options, `null` will be returned. 
  # Args: selected_options : [Inputs::SelectedOption!]!
  # Returns: Types::ProductVariant
  def variant_by_selected_options(selected_options:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: variants: List of the product’s variants.
  # Args: reverse : Types::Boolean = false, sort_key : Types::ProductVariantSortKeys = 'POSITION'
  # Returns: Types::ProductVariant.connection_type!
  def variants(reverse:, sort_key:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: vendor: The product’s vendor name.
  # Args: 
  # Returns: Types::String!
  def vendor()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

