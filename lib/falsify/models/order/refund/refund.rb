module Falsify
  # Required Fields:
  # - refund_line_items
  class Refund
    # The date and time ([ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format) when the refund was created.
    # @return [String]
    attr_reader :created_at
    # The unique identifier for the refund.
    # @return [String]
    attr_reader :id
    # An optional note attached to a refund.
    # @return [String]
    attr_accessor :note
    # @!attribute order_adjustments [r]
    #   A list of order adjustments attached to the refund.
    #   Order adjustments are generated to account for refunded shipping costs and differences between calculated and actual refund amounts.
    #   Each entry has the following properties:
    #
    #   - **id** : The unique identifier for the order adjustment.
    #   - **order_id** : The unique identifier for the order that the order adjustment is associated with.
    #   - **refund_id** : The unique identifier for the refund that the order adjustment is associated with.
    #   - **amount** : The value of the discrepancy between the calculated refund and the actual refund. If the `kind` property's value is `shipping_refund`, then `amount` returns the value of shipping charges refunded to the customer.
    #   - **tax_amount** : The taxes that are added to `amount`, such as applicable shipping taxes added to a shipping refund.
    #   - **kind** : The order adjustment type. Valid values: `shipping_refund` and `refund_discrepancy`.
    #   - **reason** : The reason for the order adjustment. To set this value, include `discrepancy_reason` when you create a refund.
    #   - **amount_set** : The amount of the order adjustment in shop and presentment currencies.
    #   - **tax_amount_set** : The tax amount of the order adjustment in shop and presentment currencies.
    #   @return [String]
    attr_reader :order_adjustments
    # The date and time ([ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format) when the refund was imported.
    # This value can be set to a date in the past when importing from other systems.
    # If no value is provided, then it will be auto-generated as the current time in Shopify.
    # @return [String]
    attr_accessor :processed_at
    # @!attribute refund_line_items [rw]
    #   A list of refunded line items.
    #   Each entry has the following properties:
    #
    #   - **id** : The unique identifier of the line item in the refund.
    #   - **line_item** : A [line item](https://help.shopify.com/en/api/reference/order#line-items-property) being returned.
    #   - **line_item_id** : The ID of the related line item in the order.
    #   - **quantity** : The quantity of the associated line item that was returned.
    #   - **restock_type** : How this refund line item affects inventory levels.
    #     Valid values:
    #     - **no_restock** : Refunding these items won't affect inventory. The number of fulfillable units for this line item will remain unchanged. For example, a refund payment can be issued but no items will be returned or made available for sale again.
    #     - **cancel** : The items have not yet been fulfilled. The canceled quantity will be added back to the available count. The number of fulfillable units for this line item will decrease.
    #     - **return** : The items were already delivered, and will be returned to the merchant. The returned quantity will be added back to the available count. The number of fulfillable units for this line item will remain unchanged.
    #     - **legacy_restock** : The deprecated `restock` property was used for this refund. These items were made available for sale again. This value is not accepted when creating new refunds.
    #   - **location_id** : The unique identifier of the [location](https://help.shopify.com/en/api/reference/inventory/location) where the items will be restocked. Required when `restock_type` has the value `return` or `cancel`.
    #   - **subtotal** : The subtotal of the refund line item.
    #   - **total_tax** : The total tax on the refund line item.
    #   - **subtotal_set** : The subtotal of the refund line item in shop and presentment currencies.
    #   - **total_tax_set** : The total tax of the line item in shop and presentment currencies.
    #   - **no_restock** : Refunding these items won't affect inventory. The number of fulfillable units for this line item will remain unchanged. For example, a refund payment can be issued but no items will be returned or made available for sale again.
    #   - **cancel** : The items have not yet been fulfilled. The canceled quantity will be added back to the available count. The number of fulfillable units for this line item will decrease.
    #   - **return** : The items were already delivered, and will be returned to the merchant. The returned quantity will be added back to the available count. The number of fulfillable units for this line item will remain unchanged.
    #   - **legacy_restock** : The deprecated `restock` property was used for this refund. These items were made available for sale again. This value is not accepted when creating new refunds.
    #   @return [String]
    attr_accessor :refund_line_items
    # Whether to add the line items back to the store's inventory.
    # Provide a `restock_type` to influence how this refund affects inventory instead
    # @return [Boolean]
    attr_accessor :restock
    # A list of transactions involved in the refund.
    # For more information, see the [Transaction](https://help.shopify.com/en/api/reference/orders/transaction) resource.
    # @return [Array<Transaction>]
    attr_accessor :transactions
    # The unique identifier of the user who performed the refund.
    # @return [String]
    attr_accessor :user_id
  end
end
