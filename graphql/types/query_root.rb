module Spree::GraphQL::Types::QueryRoot


  # List of the shop's articles.
  # Returns: Types::Article.connection_type, null: false
  def articles(reverse:, sort_key:, query:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Find a blog by its handle.
  # Returns: Types::Blog, null: true
  def blog_by_handle(handle:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # List of the shop's blogs.
  # Returns: Types::Blog.connection_type, null: false
  def blogs(reverse:, sort_key:, query:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # 
  # Returns: Types::Customer, null: true
  def customer(customer_access_token:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # 
  # Returns: Interfaces::Node, null: true
  def node(id:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # 
  # Returns: [Interfaces::Node, null: true], null: false
  def nodes(ids:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # 
  # Returns: Types::Shop, null: false
  def shop()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The schema’s entry-point for queries. This acts as the public, top-level API from which all queries must start.
  # Returns: Types::Shop, null: false
  def query_root()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

