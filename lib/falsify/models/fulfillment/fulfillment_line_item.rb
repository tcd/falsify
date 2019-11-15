require "enumerize"

module Falsify
  # A historical record of an individual item in a fulfillment.
  class FulfillmentLineItem
    extend Enumerize
    # @!attribute id [rw]
    #   The ID of the line item within the fulfillment.
    #   @return [String]
    attr_accessor :id
    # @!attribute variant_id [rw]
    #   The ID of the product variant being fulfilled.
    #   @return [String]
    attr_accessor :variant_id
    # @!attribute title [rw]
    #   The title of the product.
    #   @return [String]
    attr_accessor :title
    # @!attribute quantity [rw]
    #   The number of items in the fulfillment.
    #   @return [Integer]
    attr_accessor :quantity
    # @!attribute price [rw]
    #   The price of the item.
    #   @return [String]
    attr_accessor :price
    # @!attribute grams [rw]
    #   The weight of the item in grams.
    #   @return [String]
    attr_accessor :grams
    # @!attribute sku [rw]
    #   The unique identifier of the item in the fulfillment.
    #   @return [String]
    attr_accessor :sku
    # @!attribute variant_title [rw]
    #   The title of the product variant being fulfilled.
    #   @return [String]
    attr_accessor :variant_title
    # @!attribute vendor [rw]
    #   The name of the supplier of the item.
    #   @return [String]
    attr_accessor :vendor
    # @!attribute fulfillment_service [rw]
    #   The service provider who is doing the fulfillment.
    #   @return [String]
    attr_accessor :fulfillment_service
    # @!attribute product_id [rw]
    #   The unique numeric identifier for the product in the fulfillment.
    #   @return [String]
    attr_accessor :product_id
    # @!attribute requires_shipping [rw]
    #   Whether a customer needs to provide a shipping address when placing an order for this product variant.
    #   @return [Boolean]
    attr_accessor :requires_shipping
    # @!attribute taxable [rw]
    #   Whether the line item is taxable.
    #   @return [Boolean]
    attr_accessor :taxable
    # @!attribute gift_card [rw]
    #   Whether the line item is a [gift card](https://help.shopify.com/manual/products/gift-card-products).
    #   @return [Boolean]
    attr_accessor :gift_card
    # @!attribute name [rw]
    #   The name of the product variant.
    #   @return [String]
    attr_accessor :name
    # @!attribute variant_inventory_management [rw]
    #   The name of the inventory management system.
    #   @return [String]
    attr_accessor :variant_inventory_management
    # @!attribute properties [rw]
    #   Any additional properties associated with the line item.
    #   @return [Array<String>]
    attr_accessor :properties
    # @!attribute product_exists [rw]
    #   Whether the product exists.
    #   @return [String]
    attr_accessor :product_exists
    # @!attribute fulfillable_quantity [rw]
    #   The amount available to fulfill. This is the `quantity - max (refunded_quantity, fulfilled_quantity) - pending_fulfilled_quantity - open_fulfilled_quantity`.
    #   @return [String]
    attr_accessor :fulfillable_quantity
    # @!attribute total_discount [rw]
    #   The total of any discounts applied to the line item.
    #   @return [String]
    attr_accessor :total_discount
    # @!attribute fulfillment_status [rw]
    #   The status of an order in terms of the line items being fulfilled. Valid values: `fulfilled`, `null`, or `partial`.
    #   @return [:fulfilled, :null, :partial]
    enumerize :fulfillment_status, in: [:fulfilled, :null, :partial]
    attr_accessor :fulfillment_status
    # @!attribute tax_lines [rw]
    #   The `title`, `price`, and `rate` of any taxes applied to the line item.
    #   @return [Array<TaxLine>]
    attr_accessor :tax_lines
  end
end
