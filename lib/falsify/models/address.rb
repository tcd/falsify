module Falsify
  # Used for:
  # - Order.billing_address
  # - Order.shipping_address
  # - Customer.addresses
  # - Customer.default_address
  class Address
    # The street address of the billing address.
    # @return [String]
    attr_accessor :address1
    # An optional additional field for the street address of the billing address.
    # @return [String]
    attr_accessor :address2
    # The city, town, or village of the billing address.
    # @return [String]
    attr_accessor :city
    # The company of the person associated with the billing address.
    # @return [String]
    attr_accessor :company
    # The name of the country of the billing address.
    # @return [String]
    attr_accessor :country
    # The two-letter code ([ISO 3166-1](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) format) for the country of the billing address.
    # @return [String]
    attr_reader :country_code
    # The first name of the person associated with the payment method.
    # @return [String]
    attr_accessor :first_name
    # The last name of the person associated with the payment method.
    # @return [String]
    attr_accessor :last_name
    # The latitude of the billing address.
    # @return [String]
    attr_accessor :latitude
    # The longitude of the billing address.
    # @return [String]
    attr_accessor :longitude
    # The full name of the person associated with the payment method.
    # @return [String]
    attr_accessor :name
    # The phone number at the billing address.
    # @return [String]
    attr_accessor :phone
    # The name of the region (province, state, prefecture, ...) of the billing address.
    # @return [String]
    attr_accessor :province
    # The two-letter abbreviation of the region of the billing address.
    # @return [String]
    attr_accessor :province_code
    # The postal code (zip, postcode, Eircode, ...) of the billing address.
    # @return [String]
    attr_accessor :zip
  end
end
