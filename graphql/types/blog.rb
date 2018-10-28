module Spree::GraphQL::Types::Blog
  include ::Spree::GraphQL::Interfaces::Node

  # Find an article by its handle.
  # Returns: Types::Article, null: true
  def article_by_handle(handle:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # List of the blog's articles.
  # Defaults: reverse = false
  # Returns: Types::Article.connection_type, null: false
  def articles(reverse:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The authors who have contributed to the blog.
  # Returns: [Types::ArticleAuthor], null: false
  def authors()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # A human-friendly unique string for the Blog automatically generated from its title. 
  # Returns: ::GraphQL::Types::String, null: false
  def handle()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Globally unique identifier.
  # Returns: ::GraphQL::Types::ID, null: false
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The blogs’s title.
  # Returns: ::GraphQL::Types::String, null: false
  def title()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The url pointing to the blog accessible from the web.
  # Returns: Types::URL, null: false
  def url()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # 
  # Returns: Types::URL, null: false
  def blog()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

