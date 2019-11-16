require "enumerize"

module Falsify
  # See the [API documentation](https://help.shopify.com/en/api/reference/customers/customer).
  class Customer
    extend Enumerize
    # Whether the customer has consented to receive marketing material via email.
    # @return [Boolean]
    attr_accessor :accepts_marketing
    # The date and time ([ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format) when the customer consented or objected to receiving marketing material by email.
    # Set this value whenever the customer consents or objects to marketing materials.
    # @return [String]
    attr_accessor :accepts_marketing_updated_at
    # A list of the ten most recently updated addresses for the customer.
    # @return [Array<Address>]
    attr_accessor :addresses
    # The three-letter code ([ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) format) for the currency that the customer used when they paid for their last order.
    # Defaults to the shop currency.
    # Returns the shop currency for test orders.
    # @return [String]
    attr_reader :currency
    # The date and time ([ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format) when the customer was created.
    # @return [String]
    attr_reader :created_at
    # The default address for the customer.
    # The default address has the following properties:
    # @return [Address]
    attr_reader :default_address
    # The unique email address of the customer.
    # Attempting to assign the same email address to multiple customers returns an error.
    # @return [String]
    attr_accessor :email
    # The customer's first name.
    # @return [String]
    attr_accessor :first_name
    # A unique identifier for the customer.
    # @return [String]
    attr_accessor :id
    # The customer's last name.
    # @return [String]
    attr_accessor :last_name
    # The ID of the customer's last order.
    # @return [String]
    attr_reader :last_order_id
    # The name of the customer's last order.
    # This is directly related to the `name` field on the Order resource.
    # @return [String]
    attr_reader :last_order_name
    # Attaches additional metadata to a shop's resources.
    # @return [Metafield]
    attr_accessor :metafield
    # @!attribute marketing_opt_in_level [r]
    #   The marketing subscription opt-in level (as described by [the M<sup>3</sup>AAWG best practices guideline](https://www.m3aawg.org/sites/maawg/files/news/M3AAWG_Senders_BCP_Ver3-2015-02.pdf)) that the customer gave when they consented to receive marketing material by email.
    #   If the customer does not accept email marketing, then this property will be set to `null`.
    #   Valid values:
    #   - `single_opt_in`
    #   - `confirmed_opt_in`
    #   - `unknown`
    #   @return [:single_opt_in, :confirmed_opt_in, :unknown, nil]
    enumerize :marketing_opt_in_level, in: [:single_opt_in, :confirmed_opt_in, :unknown]
    # A unique identifier for the customer that's used with [Multipass login](https://help.shopify.com/en/api/reference/plus/multipass).
    # @return [String]
    attr_accessor :multipass_identifier
    # A note about the customer.
    # @return [String]
    attr_accessor :note
    # The number of orders associated with this customer.
    # @return [String]
    attr_reader :orders_count
    # The unique phone number ([E.164 format](https://en.wikipedia.org/wiki/E.164)) for this customer.
    # Attempting to assign the same phone number to multiple customers returns an error.
    # The property can be set using different formats, but each format must represent a number that can be dialed from anywhere in the world.
    # The following formats are all valid:
    # - 6135551212
    # - +16135551212
    # - (613)555-1212
    # - +1 613-555-1212
    # @return [String]
    attr_accessor :phone
    # @!attribute state [r]
    #   The state of the customer's account with a shop.
    #   Default value: `disabled`.
    #   Valid values:
    #   - `disabled` - The customer doesn't have an active account. Customer accounts can be disabled from the Shopify admin at any time.
    #   - `invited` - The customer has received an email invite to create an account.
    #   - `enabled` - The customer has created an account.
    #   - `declined` - The customer declined the email invite to create an account.
    #   @return [String]
    enumerize :state, in: [:disabled, :invited, :enabled, :declined], default: :disabled
    # Tags that the shop owner has attached to the customer, formatted as a string of comma-separated values.
    # A customer can have up to 250 tags.
    # Each tag can have up to 255 characters.
    # @return [String]
    attr_accessor :tags
    # Whether the customer is exempt from paying taxes on their order.
    # If `true`, then taxes won't be applied to an order at checkout.
    # If `false`, then taxes will be applied at checkout.
    # @return [Boolean]
    attr_accessor :tax_exempt
    # Whether the customer is exempt from paying specific taxes on their order.
    # Canadian taxes only.
    # @return [String]
    attr_accessor :tax_exemptions
    # The total amount of money that the customer has spent across their order history.
    # @return [String]
    attr_reader :total_spent
    # The date and time ([ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format) when the customer information was last updated.
    # @return [String]
    attr_reader :updated_at
    # Whether the customer has verified their email address.
    # @return [Boolean]
    attr_reader :verified_email
  end
end
