module Spree::GraphQL::Types::Collection
  include ::Spree::GraphQL::Interfaces::Node

  # Field: description: Stripped description of the collection, single line with HTML tags removed.
  # Returns: ::GraphQL::Types::String, null: false
  def description(truncate_at:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: descriptionHtml: The description of the collection, complete with HTML formatting.
  # Returns: Types::HTML, null: false
  def description_html()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: handle: A human-friendly unique string for the collection automatically generated from its title. Limit of 255 characters. 
  # Returns: ::GraphQL::Types::String, null: false
  def handle()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: id: Globally unique identifier.
  # Returns: ::GraphQL::Types::ID, null: false
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: image: Image associated with the collection.
  # Defaults: scale = 1
  # Returns: Types::Image, null: true
  def image(max_width:, max_height:, crop:, scale:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: products: List of products in the collection.
  # Defaults: reverse = false, sort_key = 'COLLECTION_DEFAULT'
  # Returns: Types::Product.connection_type, null: false
  def products(reverse:, sort_key:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: title: The collection’s name. Limit of 255 characters.
  # Returns: ::GraphQL::Types::String, null: false
  def title()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: updatedAt: The date and time when the collection was last modified.
  # Returns: Types::DateTime, null: false
  def updated_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

