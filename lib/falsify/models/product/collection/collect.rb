module Falsify
  # See the [API documentation](https://help.shopify.com/en/api/reference/products/collect).
  class Collect
    # The ID of the custom collection containing the product.
    # @return [String]
    attr_accessor :collection_id
    # The date and time ([ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format) when the collect was created.
    # @return [String]
    attr_accessor :created_at
    # A unique numeric identifier for the collect.
    # @return [String]
    attr_accessor :id
    # The position of this product in a manually sorted custom collection.
    # The first position is 1.
    # This value is applied only when the custom collection is sorted manually.
    # @return [Integer]
    attr_accessor :position
    # The unique numeric identifier for the product in the custom collection.
    # @return [String]
    attr_accessor :product_id
    # This is the same value as `position` but padded with leading zeroes to make it alphanumeric-sortable.
    # This value is applied only when the custom collection is sorted manually.
    # @return [String]
    attr_accessor :sort_value
    # The date and time ([ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format) when the collect was last updated.
    # @return [String]
    attr_accessor :updated_at
  end
end
