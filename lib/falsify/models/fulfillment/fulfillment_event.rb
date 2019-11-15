require "enumerize"

module Falsify
  # The FulfillmentEvent resource represents tracking events that belong to a {Fulfillment} of one or more items in an {Order}.
  # Fulfillment events are displayed on the [order status page](https://help.shopify.com/en/manual/orders/status-tracking/customize-status-tracking) to update customers on the status of their shipment.
  # See the [API documentation](https://help.shopify.com/en/api/reference/shipping-and-fulfillment/fulfillmentevent).
  class FulfillmentEvent
    extend Enumerize
    # @!attribute address1 [rw]
    #   The street address where the fulfillment event occurred.
    #   @return [String]
    attr_accessor :address1
    # @!attribute city [rw]
    #   The city where the fulfillment event occurred.
    #   @return [String]
    attr_accessor :city
    # @!attribute country [rw]
    #   The country where the fulfillment event occurred.
    #   @return [String]
    attr_accessor :country
    # @!attribute created_at [rw]
    #   The date and time ([ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format) when the fulfillment event was created.
    #   @return [String]
    attr_accessor :created_at
    # @!attribute estimated_delivery_at [rw]
    #   The estimated delivery date based on the fulfillment's tracking number, as long as it's provided by one of the following carriers: USPS, FedEx, UPS, or Canada Post (Canada only).
    #   Value is `null` if no tracking number is available or if the tracking number is from an unsupported carrier.
    #   This property is available only when [carrier calculated rates](/manual/shipping/rates-and-methods/custom-calculated-rates) are in use.'
    #   @return [String,nil]
    attr_accessor :estimated_delivery_at
    # @!attribute fulfillment_id [rw]
    #   An ID for the fulfillment that's associated with the fulfillment event.
    #   @return [String]
    attr_accessor :fulfillment_id
    # @!attribute happened_at [rw]
    #   The date and time ([ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) format) when the fulfillment event occurred.
    #   @return [String]
    attr_accessor :happened_at
    # @!attribute id [rw]
    #   An ID for the fulfillment event.
    #   @return [String]
    attr_accessor :id
    # @!attribute latitude [rw]
    #   A geographic coordinate specifying the latitude of the fulfillment event.
    #   @return [String]
    attr_accessor :latitude
    # @!attribute longitude [rw]
    #   A geographic coordinate specifying the longitude of the fulfillment event.
    #   @return [String]
    attr_accessor :longitude
    # @!attribute message [rw]
    #   An arbitrary message describing the status.
    #   Can be provided by a shipping carrier.
    #   @return [String]
    attr_accessor :message
    # @!attribute order_id [rw]
    #   The ID of the order that's associated with the fulfillment event.
    #   @return [String]
    attr_accessor :order_id
    # @!attribute province [rw]
    #   The province where the fulfillment event occurred.
    #   @return [String]
    attr_accessor :province
    # @!attribute shop_id [rw]
    #   An ID for the shop that's associated with the fulfillment event.
    #   @return [String]
    attr_accessor :shop_id
    # @!attribute status [rw]
    #   The status of the fulfillment event.
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
    enumerize :status, in: [:label_printed, :label_purchased, :attempted_delivery, :ready_for_pickup, :confirmed, :in_transit, :out_for_delivery, :delivered, :failure]
    # @!attribute updated_at [rw]
    #   The date and time ([ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format) when the fulfillment event was updated.
    #   @return [String]
    attr_accessor :updated_at
    # @!attribute zip [rw]
    #   The zip code of the location where the fulfillment event occurred.
    #   @return [String]
    attr_accessor :zip
  end
end
