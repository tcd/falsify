module Falsify
  # See the [API documentation](https://help.shopify.com/en/api/reference/products/product-image).
  # Any product may have up to 250 images, and images can be in .png, .gif or .jpg format.
  class ProductImage
    # The date and time when the product image was created.
    # The API returns this value in [ISO 8601 format](https://en.wikipedia.org/wiki/ISO_8601).
    # @return [String]
    attr_accessor :created_at
    # A unique numeric identifier for the product image.
    # @return [String]
    attr_accessor :id
    # The order of the product image in the list.
    # The first product image is at position 1 and is the "main" image for the product.
    # @return [Integer]
    attr_accessor :position
    # The id of the product associated with the image.
    # @return [String]
    attr_accessor :product_id
    # An array of variant ids associated with the image.
    # @return [Array<String>]
    attr_accessor :variant_ids
    # Specifies the location of the product image.
    # This parameter supports [URL filters](https://help.shopify.com/themes/liquid/filters/url-filters#img_url) that you can use to retrieve modified copies of the image.
    # For example, add `_small`, to the filename to retrieve a scaled copy of the image at 100 x 100 px (for example, `ipod-nano_small.png`),
    # or add `_2048x2048` to retrieve a copy of the image constrained at 2048 x 2048 px resolution (for example, `ipod-nano_2048x2048.png`).
    # @return [String]
    attr_accessor :src
    # Width dimension of the image which is determined on upload.
    # @return [Integer]
    attr_accessor :width
    # Height dimension of the image which is determined on upload.
    # @return [Integer]
    attr_accessor :height
    # The date and time when the product image was last modified.
    # The API returns this value in [ISO 8601 format](https://en.wikipedia.org/wiki/ISO_8601).
    # @return [String]
    attr_accessor :updated_at
  end
end
