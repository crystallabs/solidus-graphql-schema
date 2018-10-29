module Spree::GraphQL::Types::Image


  # Field: altText: A word or phrase to share the nature or contents of an image.
  # Args: 
  # Returns: Types::String
  def alt_text()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: id: A unique identifier for the image.
  # Args: 
  # Returns: Types::ID
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: originalSrc: The location of the original (untransformed) image as a URL.
  # Args: 
  # Returns: Types::URL!
  def original_src()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: transformedSrc: The location of the transformed image as a URL. All transformation arguments are considered "best-effort". If they can be applied to an image, they will be. Otherwise any transformations which an image type does not support will be ignored. 
  # Args: max_width : Types::Int, max_height : Types::Int, crop : Types::CropRegion, scale : Types::Int = 1, preferred_content_type : Types::ImageContentType
  # Returns: Types::URL!
  def transformed_src(max_width:, max_height:, crop:, scale:, preferred_content_type:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

