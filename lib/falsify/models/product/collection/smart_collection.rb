require "enumerize"

module Falsify
  # See the [API documentation](https://help.shopify.com/en/api/reference/products/smartcollection).
  #
  # Required Fields:
  # - rules
  # - title
  class Smartcollection
    extend Enumerize
    # @!attribute body_html [rw]
    #   The description of the smart collection.
    #   Includes HTML markup.
    #   Many shop themes display this on the smart collection page.
    #   @return [String]
    attr_accessor :body_html
    # @!attribute handle [rw]
    #   A human-friendly unique string for the smart collection.
    #   Automatically generated from the `title`.
    #   Used in shop themes by the Liquid templating language to refer to the smart collection.
    #   (maximum: 255 characters)
    #   @return [String]
    attr_accessor :handle
    # @!attribute id [rw]
    #   The ID of the smart collection.
    #   @return [String]
    attr_accessor :id
    # @!attribute image [rw]
    #   The image associated with the smart collection.
    #   Valid values:
    #   - `attachment`: An image attached to a smart collection returned as Base64-encoded binary data.
    #   - `src`: A URL that specifies the location of the image.
    #   - `alt`: Alternative text that describes the collection image.
    #   @return [Hash]
    attr_accessor :image
    # @!attribute published_at [rw]
    #   The date and time ([ISO 8601 format](https://en.wikipedia.org/wiki/ISO_8601)) that the smart collection was published.
    #   Returns `null` when the collection is hidden.
    #   @return [String,nil]
    attr_accessor :published_at
    # @!attribute published_scope [rw]
    #   Whether the smart collection is published to the Point of Sale channel.
    #   Valid values:
    #   - `web`: The smart collection is published to the Online Store channel but not published to the Point of Sale channel.
    #   - `global`: The smart collection is published to both the Online Store channel and the Point of Sale channel.
    #   @return [:web, :global]
    enumerize :published_scope, in: [:web, :global]
    # @!attribute rules [rw]
    #   The list of rules that define what products go into the smart collection.
    #   Each rule has the following properties:
    #
    #   -
    #
    #   **column** : The property of a product being used to populate the smart collection.
    #
    #   Valid values for text relations:
    #
    #     - `title`: The product title.
    #     - `type`: The product type.
    #     - `vendor`: The name of the product vendor.
    #     - `variant_title`: The title of a product variant.
    #
    #   Valid values for number relations:
    #
    #     - `variant_compare_at_price`: The compare price.
    #     - `variant_weight`: The weight of the product.
    #     - `variant_inventory`: The inventory stock.
    #   Note: `not_equals` does not work with this property.
    #     - `variant_price`: product price.
    #
    #   Valid values for an `equals` relation:
    #
    #     - `tag`: A tag associated with the product.
    #   -
    #
    #   **relation** : The relationship between the **column** choice, and the **condition**.
    #
    #   Valid values for number relations:
    #
    #     - `greater_than` The column value is greater than the condition.
    #     - `less_than` The column value is less than the condition.
    #     - `equals` The column value is equal to the condition.
    #     - `not_equals` The column value is not equal to the condition.
    #
    #   Valid values for text relations:
    #
    #     - `equals`: Checks if the **column** value is equal to the **condition** value.
    #     - `not_equals`: Checks if the **column** value is not equal to the **condition** value.
    #     - `starts_with`: Checks if the **column** value starts with the **condition** value.
    #     - `ends_with`: Checks if the **column** value ends with the **condition** value.
    #     - `contains`: Checks if the **column** value contains the **condition** value.
    #     - `not_contains`: Checks if the **column** value does not contain the **condition** value.
    #   -
    #
    #   **condition** : Select products for a smart collection using a condition.
    #   Values are either strings or numbers, depending on the **relation** value.
    #
    #   **column** : The property of a product being used to populate the smart collection.
    #
    #   Valid values for text relations:
    #
    #   - `title`: The product title.
    #   - `type`: The product type.
    #   - `vendor`: The name of the product vendor.
    #   - `variant_title`: The title of a product variant.
    #
    #   Valid values for number relations:
    #
    #   - `variant_compare_at_price`: The compare price.
    #   - `variant_weight`: The weight of the product.
    #   - `variant_inventory`: The inventory stock. Note: `not_equals` does not work with this property.
    #   - `variant_price`: product price.
    #
    #   Valid values for an `equals` relation:
    #
    #   - `tag`: A tag associated with the product.
    #
    #   **relation** : The relationship between the **column** choice, and the **condition**.
    #
    #   Valid values for number relations:
    #
    #   - `greater_than` The column value is greater than the condition.
    #   - `less_than` The column value is less than the condition.
    #   - `equals` The column value is equal to the condition.
    #   - `not_equals` The column value is not equal to the condition.
    #
    #   Valid values for text relations:
    #
    #   - `equals`: Checks if the **column** value is equal to the **condition** value.
    #   - `not_equals`: Checks if the **column** value is not equal to the **condition** value.
    #   - `starts_with`: Checks if the **column** value starts with the **condition** value.
    #   - `ends_with`: Checks if the **column** value ends with the **condition** value.
    #   - `contains`: Checks if the **column** value contains the **condition** value.
    #   - `not_contains`: Checks if the **column** value does not contain the **condition** value.
    #
    #   **condition** : Select products for a smart collection using a condition.
    #   Values are either strings or numbers, depending on the **relation** value.
    #   @return [String]
    attr_accessor :rules
    # @!attribute disjunctive [rw]
    #   Whether the product must match all the rules to be included in the smart collection.
    #   Valid values:
    #
    #   - `true`: Products only need to match one or more of the rules to be included in the smart collection.
    #   - `false`: Products must match all of the rules to be included in the smart collection.
    #   @return [String]
    attr_accessor :disjunctive
    # @!attribute sort_order [rw]
    #   The order of the products in the smart collection.
    #   Valid values:
    #
    #   - `alpha-asc`: The products are sorted alphabetically from A to Z.
    #   - `alpha-des`: The products are sorted alphabetically from Z to A.
    #   - `best-selling`: The products are sorted by number of sales.
    #   - `created`: The products are sorted by the date they were created, from oldest to newest.
    #   - `created-desc`: The products are sorted by the date they were created, from newest to oldest.
    #   - `manual`: The products are manually sorted by the shop owner. **Deprecation will begin in 2019.**
    #   - `price-asc`: The products are sorted by price from lowest to highest.
    #   - `price-desc`: The products are sorted by price from highest to lowest.
    #   @return [String]
    attr_accessor :sort_order
    # @!attribute template_suffix [rw]
    #   The suffix of the Liquid template that the shop uses.
    #   By default, the original template is called product.liquid, and additional templates are called product.`suffix`.liquid.
    #   @return [String]
    attr_accessor :template_suffix
    # @!attribute title [rw]
    #   The name of the smart collection.
    #   Maximum length: 255 characters.
    #   @return [String]
    attr_accessor :title
    # @!attribute updated_at [r]
    #   The date and time ([ISO 8601 format](https://en.wikipedia.org/wiki/ISO_8601)) when the smart collection was last modified.
    #   @return [String]
    attr_reader :updated_at
    # @!attribute products_manually_sorted_count [r]
    #   The number of manually-sorted products in the smart collection.
    #   @return [String]
    attr_reader :products_manually_sorted_count
  end
end
