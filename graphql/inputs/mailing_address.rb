module Spree::GraphQL::Inputs::MailingAddress


  # Specifies the fields accepted to create or update a mailing address.
  # Returns: 
  def mailing_address_input(address1:, address2:, city:, company:, country:, first_name:, last_name:, phone:, province:, zip:)
    raise ::Spree::GraphQL::NotImplementedError.new
  end

end

