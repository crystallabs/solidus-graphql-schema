module Spree::GraphQL::Types::Collection
  include ::Spree::GraphQL::Interfaces::Node

  # Field: description: Stripped description of the collection, single line with HTML tags removed.
  # Args: truncate_at : Types::Int
  # Returns: Types::String!
  def description(truncate_at:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: descriptionHtml: The description of the collection, complete with HTML formatting.
  # Args: 
  # Returns: Types::HTML!
  def description_html()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: handle: A human-friendly unique string for the collection automatically generated from its title. Limit of 255 characters. 
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

  # Field: image: Image associated with the collection.
  # Args: max_width : Types::Int, max_height : Types::Int, crop : Types::CropRegion, scale : Types::Int = 1
  # Returns: Types::Image
  def image(max_width:, max_height:, crop:, scale:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: products: List of products in the collection.
  # Args: reverse : Types::Boolean = false, sort_key : Types::ProductCollectionSortKeys = 'COLLECTION_DEFAULT'
  # Returns: Types::Product.connection_type!
  def products(reverse:, sort_key:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: title: The collection’s name. Limit of 255 characters.
  # Args: 
  # Returns: Types::String!
  def title()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: updatedAt: The date and time when the collection was last modified.
  # Args: 
  # Returns: Types::DateTime!
  def updated_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

