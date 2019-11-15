require "enumerize"

module Falsify
  # The Product resource lets you update and create products in a merchant's store.
  # See the [API documentation](https://help.shopify.com/en/api/reference/products/product).
  #
  # Required Fields:
  # -   title
  class Product
    extend Enumerize

    # @!attribute body_html [rw]
    #   A description of the product. Supports HTML formatting.
    #   @return [String]
    attr_accessor :body_html
    # @!attribute created_at [r]
    #   The date and time ([ISO 8601 format](https://en.wikipedia.org/wiki/ISO_8601)) when the product was created.
    #   @return [String]
    attr_accessor :created_at
    # @!attribute handle [rw]
    #   A unique human-friendly string for the product.
    #   Automatically generated from the product's `title`.
    #   Used by the Liquid templating language to refer to objects.
    #   @return [String]
    attr_accessor :handle
    # @!attribute id [r]
    #   An unsigned 64-bit integer that's used as a unique identifier for the product.
    #   Each `id` is unique across the Shopify system.
    #   No two products will have the same `id`, even if they're from different shops.
    #   @return [String]
    attr_accessor :id
    # @!attribute images [rw]
    #   A list of [product image](https://help.shopify.com/en/api/reference/products/product-image) objects, each one representing an image associated with the product.
    #   @return [String]
    attr_accessor :images
    # @!attribute options [rw]
    #   The custom product property names like `Size`, `Color`, and `Material`.
    #   You can add up to 3 options of up to 255 characters each.
    #   @return [String]
    attr_accessor :options
    # @!attribute product_type [rw]
    #   A categorization for the product used for filtering and searching products.
    #   @return [String]
    attr_accessor :product_type
    # @!attribute published_at [rw]
    #   The date and time ([ISO 8601 format](https://en.wikipedia.org/wiki/ISO_8601)) when the product was published.
    #   Can be set to `null` to unpublish the product from the Online Store channel.
    #   @return [String]
    attr_accessor :published_at
    # @!attribute published_scope [rw]
    #   Whether the product is published to the Point of Sale channel.
    #   Valid values:
    #   - `web`: The product is published to the Online Store channel but not published to the Point of Sale channel.
    #   - `global`: The product is published to both the Online Store channel and the Point of Sale channel.
    #   @return [String]
    enumerize :published_scope, in: [:web, :global]
    # attr_accessor :published_scope
    # @!attribute tags [rw]
    #   A string of comma-separated tags that are used for filtering and search.
    #   A product can have up to 250 tags.
    #   Each tag can have up to 255 characters.
    #   @return [String]
    attr_accessor :tags
    # @!attribute template_suffix [rw]
    #   The suffix of the Liquid template used for the product page.
    #   If this property is specified, then the product page uses a template called "product.suffix.liquid", where "suffix" is the value of this property.
    #   If this property is `""` or `null`, then the product page uses the default template "product.liquid".
    #   (default: `null`)
    #   @return [String]
    attr_accessor :template_suffix
    # @!attribute title [rw]
    #   The name of the product.
    #   @return [String]
    attr_accessor :title
    # @!attribute metafields_global_title_tag [rw]
    #   The name of the product used for [SEO purposes](https://help.shopify.com/en/manual/promoting-marketing/seo#page-title).
    #   Generally added to the `<meta name='title'>` tag.
    #   @return [String]
    attr_accessor :metafields_global_title_tag
    # @!attribute metafields_global_description_tag [rw]
    #   A description of the product used for [SEO purposes](https://help.shopify.com/en/manual/promoting-marketing/seo#meta-description).
    #   Generally added to the `<meta name='description'>` tag.
    #   @return [String]
    attr_accessor :metafields_global_description_tag
    # @!attribute updated_at [r]
    #   The date and time ([ISO 8601 format](https://en.wikipedia.org/wiki/ISO_8601)) when the product was last modified.
    #   @return [String]
    attr_accessor :updated_at
    # @!attribute variants [rw]
    #   A list of [product variants](/en/api/reference/products/product-variant), each representing a different version of the product.
    #   The `position` property is read-only.
    #   The position of variants is indicated by the order in which they are listed.
    #   To retrieve the `presentment_prices` property on a variant, include the request header `'X-Shopify-Api-Features': 'include-presentment-prices'`.
    #   @return [Array<ProductVariant>]
    attr_accessor :variants
    # @!attribute vendor [rw]
    #   The name of the product's vendor.
    #   @return [String]
    attr_accessor :vendor
  end
end
