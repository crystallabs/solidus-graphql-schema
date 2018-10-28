module Spree::GraphQL::Types::QueryRoot


  # Field: articles: List of the shop's articles.
  # Args: reverse = false, sort_key = 'ID', query
  # Returns: Types::Article.connection_type, null: false
  def articles(reverse:, sort_key:, query:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: blogByHandle: Find a blog by its handle.
  # Args: handle
  # Returns: Types::Blog, null: true
  def blog_by_handle(handle:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: blogs: List of the shop's blogs.
  # Args: reverse = false, sort_key = 'ID', query
  # Returns: Types::Blog.connection_type, null: false
  def blogs(reverse:, sort_key:, query:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: customer
  # Args: customer_access_token
  # Returns: Types::Customer, null: true
  def customer(customer_access_token:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: node
  # Args: id
  # Returns: Interfaces::Node, null: true
  def node(id:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: nodes
  # Args: ids
  # Returns: [Interfaces::Node, null: true], null: false
  def nodes(ids:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: shop
  # Args: 
  # Returns: Types::Shop, null: false
  def shop()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

