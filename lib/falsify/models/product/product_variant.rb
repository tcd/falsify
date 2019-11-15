require "enumerize"

module Falsify
  # A variant can be added to a Product resource to represent one version of a product with several options.
  #
  # See the [API documentation](https://help.shopify.com/en/api/reference/products/product-variant).
  class ProductVariant
    extend Enumerize
    # @!attribute barcode [rw]
    #   The barcode, UPC, or ISBN number for the product.
    #   @return [String]
    attr_accessor :barcode
    # @!attribute compare_at_price [rw]
    #   The original price of the item before an adjustment or a sale.
    #   @return [String]
    attr_accessor :compare_at_price
    # @!attribute created_at [rw]
    #   The date and time ([ISO 8601 format](https://en.wikipedia.org/wiki/ISO_8601)) when the product variant was created.
    #   @return [String]
    attr_accessor :created_at
    # @!attribute fulfillment_service [rw]
    #   The fulfillment service associated with the product variant.
    #   Valid values: `manual` or the handle of a [fulfillment service](https://help.shopify.com/en/api/reference/shipping-and-fulfillment/fulfillmentservice).
    #   @return [String]
    attr_accessor :fulfillment_service
    # @!attribute grams [rw]
    #   The weight of the product variant in grams.
    #   @return [String]
    attr_accessor :grams
    # @!attribute id [rw]
    #   The unique numeric identifier for the product variant.
    #   @return [String]
    attr_accessor :id
    # @!attribute image_id [rw]
    #   The unique numeric identifier for a product's image.
    #   The image must be associated to the same product as the variant.
    #   @return [String]
    attr_accessor :image_id
    # @!attribute inventory_item_id [rw]
    #   The unique identifier for the inventory item, which is used in the Inventory API to query for inventory information.
    #   @return [String]
    attr_accessor :inventory_item_id
    # @!attribute inventory_management [rw]
    #   The fulfillment service that tracks the number of items in stock for the product variant.
    #   If you track the inventory yourself using the admin, then set the value to "shopify".
    #   Valid values: `shopify` or the handle of a [fulfillment service](https://help.shopify.com/en/api/reference/shipping-and-fulfillment/fulfillmentservice) that has inventory management enabled.
    #   Must be the same fulfillment service referenced by the `fulfillment_service` property.
    #   @return [String]
    attr_accessor :inventory_management
    # @!attribute inventory_policy [rw]
    #   Whether customers are allowed to place an order for the product variant when it's out of stock.
    #   Valid values:
    #   - `:deny` - Customers are not allowed to place orders for the product variant if it's out of stock.
    #   - `:continue` - Customers are allowed to place orders for the product variant if it's out of stock.
    #   @return [:deny, :continue]
    enumerize :inventory_policy, in: [:deny, :continue]
    # @!attribute inventory_quantity [r]
    #   An aggregate of inventory across all locations.
    #   To adjust inventory at a specific location, use the [InventoryLevel](https://help.shopify.com/en/api/reference/inventory/inventorylevel) resource.
    #   @return [String]
    attr_accessor :inventory_quantity
    # @!attribute old_inventory_quantity [rw]
    #   @deprecated Use the [InventoryLevel](https://help.shopify.com/en/api/reference/inventory/inventorylevel) resource instead.
    #   @return [Integer]
    attr_accessor :old_inventory_quantity
    # @!attribute inventory_quantity_adjustment [rw]
    #   @deprecated Use the [InventoryLevel](https://help.shopify.com/en/api/reference/inventory/inventorylevel) resource instead.
    #   @return [Integer]
    attr_accessor :inventory_quantity_adjustment
    # @!attribute option [rw]
    #   The custom properties that a shop owner uses to define product variants.
    #   You can define three options for a product: `option1`, `option2`, `option3`.
    #   Default value: `Default Title`.
    #   @return [String]
    attr_accessor :option
    # @!attribute presentment_prices [rw]
    #   A list of the variant's presentment prices and compare-at prices in each of the shop's enabled presentment currencies.
    #   Each price object has the following properties:
    #   - `currency_code`: The three-letter code ([ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) format) for one of the shop's enabled presentment currencies.
    #   - `amount`: The variant's price or compare-at price in the presentment currency.
    #   @return [Array<String>]
    attr_accessor :presentment_prices
    # @!attribute position [r]
    #   The order of the product variant in the list of product variants.
    #   The first position in the list is `1`.
    #   The position of variants is indicated by the order in which they are listed.
    #   @return [Integer]
    attr_accessor :position
    # @!attribute price [rw]
    #   The price of the product variant.
    #   @return [String]
    attr_accessor :price
    # @!attribute product_id [rw]
    #   The unique numeric identifier for the product.
    #   @return [String]
    attr_accessor :product_id
    # @!attribute requires_shipping [rw]
    #   Whether a customer needs to provide a shipping address when placing an order for the product variant.
    #   @return [Boolean]
    attr_accessor :requires_shipping
    # @!attribute sku [rw]
    #   A unique identifier for the product variant in the shop.
    #   Required in order to connect to a [FulfillmentService](https://help.shopify.com/api/reference/fulfillmentservice).
    #   @return [Boolean]
    attr_accessor :sku
    # @!attribute taxable [rw]
    #   Whether a tax is charged when the product variant is sold.
    #   @return [Boolean]
    attr_accessor :taxable
    # @!attribute tax_code [rw]
    #   This parameter applies only to the stores that have the [Avalara AvaTax](https://help.shopify.com/en/manual/taxes/tax-services/taxation) app installed.
    #   Specifies the Avalara tax code for the product variant.
    #   @return [String]
    attr_accessor :tax_code
    # @!attribute title [rw]
    #   The title of the product variant.
    #   @return [String]
    attr_accessor :title
    # @!attribute updated_at [rw]
    #   The date and time when the product variant was last modified.
    #   Gets returned in [ISO 8601 format](https://en.wikipedia.org/wiki/ISO_8601).
    #   @return [String]
    attr_accessor :updated_at
    # @!attribute weight [rw]
    #   The weight of the product variant in the unit system specified with `weight_unit`.
    #   @return [String]
    attr_accessor :weight
    # @!attribute weight_unit [rw]
    #   The unit of measurement that applies to the product variant's weight.
    #   If you don't specify a value for `weight_unit`, then the shop's default unit of measurement is applied.
    #   Valid values: `g`, `kg`, `oz`, and `lb`.
    #   @return [:g, :kg, :oz, :lb]
    enumerize :weight_unit, in: [:g, :kg, :oz, :lb]
  end
end
