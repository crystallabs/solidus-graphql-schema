module Spree::GraphQL::Types::QueryRoot


  # Field: articles: List of the shop's articles.
  # Args: reverse : Types::Boolean = false, sort_key : Types::ArticleSortKeys = 'ID', query : Types::String
  # Returns: Types::Article.connection_type!
  def articles(reverse:, sort_key:, query:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: blogByHandle: Find a blog by its handle.
  # Args: handle : Types::String!
  # Returns: Types::Blog
  def blog_by_handle(handle:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: blogs: List of the shop's blogs.
  # Args: reverse : Types::Boolean = false, sort_key : Types::BlogSortKeys = 'ID', query : Types::String
  # Returns: Types::Blog.connection_type!
  def blogs(reverse:, sort_key:, query:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: customer
  # Args: customer_access_token : Types::String!
  # Returns: Types::Customer
  def customer(customer_access_token:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: node
  # Args: id : Types::ID!
  # Returns: Interfaces::Node
  def node(id:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: nodes
  # Args: ids : [Types::ID!]!
  # Returns: [Interfaces::Node]!
  def nodes(ids:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: shop
  # Args: 
  # Returns: Types::Shop!
  def shop()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

