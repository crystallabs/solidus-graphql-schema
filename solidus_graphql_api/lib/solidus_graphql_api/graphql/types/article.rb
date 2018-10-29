module Spree::GraphQL::Types::Article
  include ::Spree::GraphQL::Interfaces::Node

  # @graphql authorV2 The article's author.
  # @return [Types::ArticleAuthor]
  def author_v2()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql blog The blog that the article belongs to.
  # @return [Types::Blog!]
  def blog()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql comments List of comments posted on the article.
  # @param reverse [Types::Boolean] (false) Reverse the order of the underlying list.
  # @return [Types::Comment.connection_type!]
  def comments(reverse:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql content Stripped content of the article, single line with HTML tags removed.
  # @param truncate_at [Types::Int] Truncates string after the given length.
  # @return [Types::String!]
  def content(truncate_at:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql contentHtml The content of the article, complete with HTML formatting.
  # @return [Types::HTML!]
  def content_html()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql excerpt Stripped excerpt of the article, single line with HTML tags removed.
  # @param truncate_at [Types::Int] Truncates string after the given length.
  # @return [Types::String]
  def excerpt(truncate_at:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql excerptHtml The excerpt of the article, complete with HTML formatting.
  # @return [Types::HTML]
  def excerpt_html()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql handle A human-friendly unique string for the Article automatically generated from its title. 
  # @return [Types::String!]
  def handle()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql id Globally unique identifier.
  # @return [Types::ID!]
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql image The image associated with the article.
  # @param max_width [Types::Int] Image width in pixels between 1 and 2048. This argument is deprecated: Use `maxWidth` on `Image.transformedSrc` instead.
  # @param max_height [Types::Int] Image height in pixels between 1 and 2048. This argument is deprecated: Use `maxHeight` on `Image.transformedSrc` instead.
  # @param crop [Types::CropRegion] Crops the image according to the specified region. This argument is deprecated: Use `crop` on `Image.transformedSrc` instead.
  # @param scale [Types::Int] (1) Image size multiplier for high-resolution retina displays. Must be between 1 and 3. This argument is deprecated: Use `scale` on `Image.transformedSrc` instead.
  # @return [Types::Image]
  def image(max_width:, max_height:, crop:, scale:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql publishedAt The date and time when the article was published.
  # @return [Types::DateTime!]
  def published_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql tags A categorization that a article can be tagged with.
  # @return [[Types::String!]!]
  def tags()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql title The article’s name.
  # @return [Types::String!]
  def title()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # @graphql url The url pointing to the article accessible from the web.
  # @return [Types::URL!]
  def url()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

