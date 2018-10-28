module Spree::GraphQL::Types::CommentAuthor


  # The author's email.
  # Returns: ::GraphQL::Types::String, null: false
  def email()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The author’s name.
  # Returns: ::GraphQL::Types::String, null: false
  def name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # 
  # Returns: ::GraphQL::Types::String, null: false
  def comment_author()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

