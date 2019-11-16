require "enumerize"

module Falsify
  # In Shopify, a fulfillment represents a shipment of one or more items in an order.
  # You can use the Fulfillment resource to view, create, modify, or delete an order's fulfillments.
  # See the [API documentation](https://help.shopify.com/en/api/reference/shipping-and-fulfillment/fulfillment).
  class Fulfillment
    extend Enumerize
    # The date and time when the fulfillment was created.
    # The API returns this value in [ISO 8601 format](https://en.wikipedia.org/wiki/ISO_8601).
    # @return [String]
    attr_accessor :created_at
    # The ID for the fulfillment.
    # @return [String]
    attr_accessor :id
    # A historical record of each item in the fulfillment.
    # @return [Array<LineItem>]
    attr_accessor :line_items
    # The unique identifier of the location that the fulfillment should be processed for.
    # To find the ID of the location, use the [Location resource](https://help.shopify.com/en/api/reference/inventory/location).
    # @return [String]
    attr_accessor :location_id
    # The uniquely identifying fulfillment name, consisting of two parts separated by a `.`.
    # The first part represents the order name and the second part represents the fulfillment number.
    # The fulfillment number automatically increments depending on how many fulfillments are in an order (e.g. `#1001.1`, `#1001.2`).
    # @return [String]
    attr_accessor :name
    # Whether the customer should be notified.
    # If set to `true`, then an email will be sent when the fulfillment is created or updated.
    # For orders that were initially created using the API, the default value is `false`.
    # For all other orders, the default value is `true`.
    # @return [Boolean]
    attr_accessor :notify_customer
    # The unique numeric identifier for the order.
    # @return [String]
    attr_accessor :order_id
    # A text field that provides information about the receipt:
    # - **testcase** : Whether the fulfillment was a testcase.
    # - **authorization** : The authorization code.
    # @return [String]
    attr_accessor :receipt
    # The type of service used.
    # @return [Hash]
    attr_accessor :service
    # @!attribute shipment_status [rw]
    #   The current shipment status of the fulfillment.
    #   Valid values:
    #   - `label_printed` - A label for the shipment was purchased and printed.
    #   - `label_purchased` - A label for the shipment was purchased, but not printed.
    #   - `attempted_delivery` - Delivery of the shipment was attempted, but unable to be completed.
    #   - `ready_for_pickup` - The shipment is ready for pickup at a shipping depot.
    #   - `confirmed` - The carrier is aware of the shipment, but hasn't received it yet.
    #   - `in_transit` - The shipment is being transported between shipping facilities on the way to its destination.
    #   - `out_for_delivery` - The shipment is being delivered to its final destination.
    #   - `delivered` - The shipment was succesfully delivered.
    #   - `failure` - Something went wrong when pulling tracking information for the shipment, such as the tracking number was invalid or the shipment was canceled.
    #   @return [:label_printed, :label_purchased, :attempted_delivery, :ready_for_pickup, :confirmed, :in_transit, :out_for_delivery, :delivered, :failure]
    enumerize :shipment_status, in: [:label_printed, :label_purchased, :attempted_delivery, :ready_for_pickup, :confirmed, :in_transit, :out_for_delivery, :delivered, :failure]
    # @!attribute status [rw]
    #   The status of the fulfillment.
    #   Valid values:
    #   - `pending` - The fulfillment is pending.
    #   - `open` - The fulfillment has been acknowledged by the service and is in processing.
    #   - `success` - The fulfillment was successful.
    #   - `cancelled` - The fulfillment was cancelled.
    #   - `error` - There was an error with the fulfillment request.
    #   - `failure` - The fulfillment request failed.
    #   @return [:pending, :open, :success, :cancelled, :error, :failure]
    enumerize :status, in: [:pending, :open, :success, :cancelled, :error, :failure]
    # The name of the tracking company.
    # When creating a fulfillment for a supported carrier, send the `tracking_company` exactly as written in the list above.
    # If the tracking company doesn't match one of the supported entries, then the shipping status might not be updated properly during the fulfillment process.
    # @return [String]
    attr_accessor :tracking_company
    # A list of tracking numbers, provided by the shipping company.
    #
    # It is highly recommended that you send the tracking company and the tracking URL as well.
    # If neither one of these is sent, then the tracking company will be determined automatically.
    # This can result in an invalid tracking URL.
    #
    # The tracking URL is displayed in the shipping confirmation email, which can optionally be sent to the customer.
    # When accounts are enabled, it is also displayed in the customer's order history.
    #
    # @return [Array<String>]
    attr_accessor :tracking_numbers
    # The URLs of tracking pages for the fulfillment.
    # @return [Array<String>]
    attr_accessor :tracking_urls
    # The date and time ([ISO 8601 format](https://en.wikipedia.org/wiki/ISO_8601)) when the fulfillment was last modified..
    # @return [String]
    attr_accessor :updated_at
    # The name of the inventory management service.
    # @return [String]
    attr_accessor :variant_inventory_management
  end
end
