module Spree::GraphQL::Types::Blog
  include ::Spree::GraphQL::Interfaces::Node

  # Field: articleByHandle: Find an article by its handle.
  # Returns: Types::Article, null: true
  def article_by_handle(handle:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: articles: List of the blog's articles.
  # Defaults: reverse = false
  # Returns: Types::Article.connection_type, null: false
  def articles(reverse:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: authors: The authors who have contributed to the blog.
  # Returns: [Types::ArticleAuthor], null: false
  def authors()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: handle: A human-friendly unique string for the Blog automatically generated from its title. 
  # Returns: ::GraphQL::Types::String, null: false
  def handle()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: id: Globally unique identifier.
  # Returns: ::GraphQL::Types::ID, null: false
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: title: The blogs’s title.
  # Returns: ::GraphQL::Types::String, null: false
  def title()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: url: The url pointing to the blog accessible from the web.
  # Returns: Types::URL, null: false
  def url()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

