module Spree::GraphQL::Types::Image


  # A word or phrase to share the nature or contents of an image.
  # Returns: ::GraphQL::Types::String, null: true
  def alt_text()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # A unique identifier for the image.
  # Returns: ::GraphQL::Types::ID, null: true
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The location of the original (untransformed) image as a URL.
  # Returns: Types::URL, null: false
  def original_src()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The location of the transformed image as a URL. All transformation arguments are considered "best-effort". If they can be applied to an image, they will be. Otherwise any transformations which an image type does not support will be ignored. 
  # Returns: Types::URL, null: false
  def transformed_src(max_width:, max_height:, crop:, scale:, preferred_content_type:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Represents an image resource.
  # Returns: Types::URL, null: false
  def image()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

