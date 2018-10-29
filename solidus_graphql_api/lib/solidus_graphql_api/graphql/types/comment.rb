module Spree::GraphQL::Types::Comment
  include ::Spree::GraphQL::Interfaces::Node

  # Field: author: The comment’s author.
  # Args: 
  # Returns: Types::CommentAuthor!
  def author()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: content: Stripped content of the comment, single line with HTML tags removed.
  # Args: truncate_at : Types::Int
  # Returns: Types::String!
  def content(truncate_at:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: contentHtml: The content of the comment, complete with HTML formatting.
  # Args: 
  # Returns: Types::HTML!
  def content_html()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: id: Globally unique identifier.
  # Args: 
  # Returns: Types::ID!
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

