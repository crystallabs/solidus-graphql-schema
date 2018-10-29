module Spree::GraphQL::Types::Blog
  include ::Spree::GraphQL::Interfaces::Node

  # Field: articleByHandle: Find an article by its handle.
  # Args: handle : Types::String!
  # Returns: Types::Article
  def article_by_handle(handle:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: articles: List of the blog's articles.
  # Args: reverse : Types::Boolean = false
  # Returns: Types::Article.connection_type!
  def articles(reverse:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: authors: The authors who have contributed to the blog.
  # Args: 
  # Returns: [Types::ArticleAuthor!]!
  def authors()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: handle: A human-friendly unique string for the Blog automatically generated from its title. 
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

  # Field: title: The blogs’s title.
  # Args: 
  # Returns: Types::String!
  def title()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: url: The url pointing to the blog accessible from the web.
  # Args: 
  # Returns: Types::URL!
  def url()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

