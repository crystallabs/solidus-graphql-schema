module Spree::GraphQL::Types::Article
  include ::Spree::GraphQL::Interfaces::Node

  # Field: authorV2: The article's author.
  # Args: 
  # Returns: Types::ArticleAuthor, null: true
  def author_v2()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: blog: The blog that the article belongs to.
  # Args: 
  # Returns: Types::Blog, null: false
  def blog()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: comments: List of comments posted on the article.
  # Args: reverse = false
  # Returns: Types::Comment.connection_type, null: false
  def comments(reverse:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: content: Stripped content of the article, single line with HTML tags removed.
  # Args: truncate_at
  # Returns: ::GraphQL::Types::String, null: false
  def content(truncate_at:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: contentHtml: The content of the article, complete with HTML formatting.
  # Args: 
  # Returns: Types::HTML, null: false
  def content_html()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: excerpt: Stripped excerpt of the article, single line with HTML tags removed.
  # Args: truncate_at
  # Returns: ::GraphQL::Types::String, null: true
  def excerpt(truncate_at:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: excerptHtml: The excerpt of the article, complete with HTML formatting.
  # Args: 
  # Returns: Types::HTML, null: true
  def excerpt_html()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: handle: A human-friendly unique string for the Article automatically generated from its title. 
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

  # Field: image: The image associated with the article.
  # Args: max_width, max_height, crop, scale = 1
  # Returns: Types::Image, null: true
  def image(max_width:, max_height:, crop:, scale:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: publishedAt: The date and time when the article was published.
  # Args: 
  # Returns: Types::DateTime, null: false
  def published_at()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: tags: A categorization that a article can be tagged with.
  # Args: 
  # Returns: [::GraphQL::Types::String], null: false
  def tags()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: title: The article’s name.
  # Args: 
  # Returns: ::GraphQL::Types::String, null: false
  def title()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: url: The url pointing to the article accessible from the web.
  # Args: 
  # Returns: Types::URL, null: false
  def url()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

