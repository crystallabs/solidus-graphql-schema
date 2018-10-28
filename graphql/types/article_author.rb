module Spree::GraphQL::Types::ArticleAuthor


  # The author's bio.
  # Returns: ::GraphQL::Types::String, null: true
  def bio()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The author’s email.
  # Returns: ::GraphQL::Types::String, null: false
  def email()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The author's first name.
  # Returns: ::GraphQL::Types::String, null: false
  def first_name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The author's last name.
  # Returns: ::GraphQL::Types::String, null: false
  def last_name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # The author's full name.
  # Returns: ::GraphQL::Types::String, null: false
  def name()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

  # 
  # Returns: ::GraphQL::Types::String, null: false
  def article_author()
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

