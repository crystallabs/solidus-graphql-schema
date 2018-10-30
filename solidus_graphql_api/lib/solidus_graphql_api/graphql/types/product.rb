module Spree::GraphQL::Types::Product
  include ::Spree::GraphQL::Interfaces::Node
  # @graphql availableForSale Indicates if at least one product variant is available for sale.
  # @return [Types::Boolean!]
  def available_for_sale()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql collections List of collections a product belongs to.
  # @param reverse [Types::Boolean] (false) Reverse the order of the underlying list.
  # @return [Types::Collection.connection_type!]
  def collections(reverse:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql createdAt The date and time when the product was created.
  # @return [Types::DateTime!]
  def created_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql description Stripped description of the product, single line with HTML tags removed.
  # @param truncate_at [Types::Int] Truncates string after the given length.
  # @return [Types::String!]
  def description(truncate_at:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql descriptionHtml The description of the product, complete with HTML formatting.
  # @return [Types::HTML!]
  def description_html()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql handle A human-friendly unique string for the Product automatically generated from its title. They are used by the Liquid templating language to refer to objects. 
  # @return [Types::String!]
  def handle()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql id Globally unique identifier.
  # @return [Types::ID!]
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql images List of images associated with the product.
  # @param reverse [Types::Boolean] (false) Reverse the order of the underlying list.
  # @param sort_key [Types::ProductImageSortKeys] ('POSITION') Sort the underlying list by the given key.
  # @param max_width [Types::Int] Image width in pixels between 1 and 2048. This argument is deprecated: Use `maxWidth` on `Image.transformedSrc` instead.
  # @param max_height [Types::Int] Image height in pixels between 1 and 2048. This argument is deprecated: Use `maxHeight` on `Image.transformedSrc` instead.
  # @param crop [Types::CropRegion] Crops the image according to the specified region. This argument is deprecated: Use `crop` on `Image.transformedSrc` instead.
  # @param scale [Types::Int] (1) Image size multiplier for high-resolution retina displays. Must be between 1 and 3. This argument is deprecated: Use `scale` on `Image.transformedSrc` instead.
  # @return [Types::Image.connection_type!]
  def images(reverse:, sort_key:, max_width:, max_height:, crop:, scale:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql onlineStoreUrl The online store URL for the product. A value of `null` indicates that the product is not published to the Online Store sales channel. 
  # @return [Types::URL]
  def online_store_url()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql options List of custom product options (maximum of 3 per product).
  # @param first [Types::Int] Truncate the array result to this size.
  # @return [[Types::ProductOption!]!]
  def options(first:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql priceRange The price range.
  # @return [Types::ProductPriceRange!]
  def price_range()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql productType A categorization that a product can be tagged with, commonly used for filtering and searching.
  # @return [Types::String!]
  def product_type()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql publishedAt The date and time when the product was published to the channel.
  # @return [Types::DateTime!]
  def published_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql tags A categorization that a product can be tagged with, commonly used for filtering and searching. Each comma-separated tag has a character limit of 255. 
  # @return [[Types::String!]!]
  def tags()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql title The product’s title.
  # @return [Types::String!]
  def title()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql updatedAt The date and time when the product was last modified.
  # @return [Types::DateTime!]
  def updated_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql variantBySelectedOptions Find a product’s variant based on its selected options. This is useful for converting a user’s selection of product options into a single matching variant. If there is not a variant for the selected options, `null` will be returned. 
  # @param selected_options [[Inputs::SelectedOption!]!] 
  # @return [Types::ProductVariant]
  def variant_by_selected_options(selected_options:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql variants List of the product’s variants.
  # @param reverse [Types::Boolean] (false) Reverse the order of the underlying list.
  # @param sort_key [Types::ProductVariantSortKeys] ('POSITION') Sort the underlying list by the given key.
  # @return [Types::ProductVariant.connection_type!]
  def variants(reverse:, sort_key:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql vendor The product’s vendor name.
  # @return [Types::String!]
  def vendor()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end
