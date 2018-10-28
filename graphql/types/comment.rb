module Spree::GraphQL::Types::Comment
  include ::Spree::GraphQL::Interfaces::Node

  # The comment’s author.
  # Returns: Types::CommentAuthor, null: false
  def author()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Stripped content of the comment, single line with HTML tags removed.
  # Returns: ::GraphQL::Types::String, null: false
  def content(truncate_at:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The content of the comment, complete with HTML formatting.
  # Returns: Types::HTML, null: false
  def content_html()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # Globally unique identifier.
  # Returns: ::GraphQL::Types::ID, null: false
  def id()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # 
  # Returns: ::GraphQL::Types::ID, null: false
  def comment()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

