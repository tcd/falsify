require "enumerize"

module Falsify
  # See the [API documentation](https://help.shopify.com/en/api/reference/products/customcollection).
  #
  # Required Fields:
  # -   title
  class Customcollection
    extend Enumerize
    # The description of the custom collection, complete with HTML markup.
    # Many templates display this on their custom collection pages.
    # @return [String]
    attr_accessor :body_html
    # A human-friendly unique string for the custom collection automatically generated from its title.
    # This is used in shop themes by the Liquid templating language to refer to the custom collection.
    # (limit: 255 characters)
    # @return [String]
    attr_accessor :handle
    # Image associated with the custom collection.
    # Valid values are:
    # - **attachment** : An image attached to a custom collection returned as Base64-encoded binary data.
    # - **src** : The source URL that specifies the location of the image.
    # - **alt** : Alternative text that describes the collection image.
    # - **created_at** : The time and date ([ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format) when the image was added to the collection.
    # - **width** : The width of the image in pixels.
    # - **height** : The height of the image in pixels.
    # @return [Hash]
    attr_accessor :image
    # The ID for the custom collection.
    # @return [String]
    attr_reader :id
    # Whether the custom collection is published to the Online Store channel.
    # @return [String]
    attr_accessor :published
    # The time and date ([ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format) when the collection was made visible.
    # Returns `null` for a hidden custom collection.
    # @return [String,nil]
    attr_reader :published_at
    # @!attribute published_scope [r]
    #   Whether the collection is published to the Point of Sale channel.
    #   Valid values:
    #   - `web`: The custom collection is published to the Online Store channel but not published to the Point of Sale channel.
    #   - `global`: The custom collection is published to both the Online Store channel and the Point of Sale channel.
    #   @return [:web, :global]
    enumerize :published_scope, in: [:web, :global]
    # The order in which products in the custom collection appear.
    # Valid values:
    # - **alpha-asc** : Alphabetically, in ascending order (A - Z).
    # - **alpha-desc** : Alphabetically, in descending order (Z - A).
    # - **best-selling** : By best-selling products.
    # - **created** : By date created, in ascending order (oldest - newest).
    # - **created-desc** : By date created, in descending order (newest - oldest).
    # - **manual** : Order created by the shop owner.
    # - **price-asc** : By price, in ascending order (lowest - highest).
    # - **price-desc** : By price, in descending order (highest - lowest).
    # # @return [String]
    # @return ["alpha-asc", "alpha-desc", "best-selling", "created", "created-desc", "manual", "price-asc", "price-desc"]
    attr_accessor :sort_order
    # The suffix of the liquid template being used.
    # For example, if the value is `custom`, then the collection is using the `collection.custom.liquid` template.
    # If the value is `null`, then the collection is using the default `collection.liquid`.
    # @return [String,nil]
    attr_accessor :template_suffix
    # The name of the custom collection.
    # (limit: 255 characters)
    # @return [String]
    attr_accessor :title
    # The date and time ([ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format) when the custom collection was last modified.
    # @return [String]
    attr_reader :updated_at
  end
end
