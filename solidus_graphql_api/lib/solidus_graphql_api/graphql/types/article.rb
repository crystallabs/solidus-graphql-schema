module Spree::GraphQL::Types::Article
  include ::Spree::GraphQL::Interfaces::Node

  # Field: authorV2: The article's author.
  # Args: 
  # Returns: Types::ArticleAuthor
  def author_v2()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: blog: The blog that the article belongs to.
  # Args: 
  # Returns: Types::Blog!
  def blog()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: comments: List of comments posted on the article.
  # Args: reverse : Types::Boolean = false
  # Returns: Types::Comment.connection_type!
  def comments(reverse:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: content: Stripped content of the article, single line with HTML tags removed.
  # Args: truncate_at : Types::Int
  # Returns: Types::String!
  def content(truncate_at:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: contentHtml: The content of the article, complete with HTML formatting.
  # Args: 
  # Returns: Types::HTML!
  def content_html()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: excerpt: Stripped excerpt of the article, single line with HTML tags removed.
  # Args: truncate_at : Types::Int
  # Returns: Types::String
  def excerpt(truncate_at:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: excerptHtml: The excerpt of the article, complete with HTML formatting.
  # Args: 
  # Returns: Types::HTML
  def excerpt_html()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: handle: A human-friendly unique string for the Article automatically generated from its title. 
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

  # Field: image: The image associated with the article.
  # Args: max_width : Types::Int, max_height : Types::Int, crop : Types::CropRegion, scale : Types::Int = 1
  # Returns: Types::Image
  def image(max_width:, max_height:, crop:, scale:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: publishedAt: The date and time when the article was published.
  # Args: 
  # Returns: Types::DateTime!
  def published_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: tags: A categorization that a article can be tagged with.
  # Args: 
  # Returns: [Types::String!]!
  def tags()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: title: The article’s name.
  # Args: 
  # Returns: Types::String!
  def title()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: url: The url pointing to the article accessible from the web.
  # Args: 
  # Returns: Types::URL!
  def url()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

