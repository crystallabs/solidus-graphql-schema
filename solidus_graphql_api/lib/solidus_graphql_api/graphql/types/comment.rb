module Spree::GraphQL::Types::Comment
  include ::Spree::GraphQL::Interfaces::Node

  # Field: author: The comment’s author.
  # Args: 
  # Returns: Types::CommentAuthor, null: false
  def author()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: content: Stripped content of the comment, single line with HTML tags removed.
  # Args: truncate_at
  # Returns: ::GraphQL::Types::String, null: false
  def content(truncate_at:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: contentHtml: The content of the comment, complete with HTML formatting.
  # Args: 
  # Returns: Types::HTML, null: false
  def content_html()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Field: id: Globally unique identifier.
  # Args: 
  # Returns: ::GraphQL::Types::ID, null: false
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

