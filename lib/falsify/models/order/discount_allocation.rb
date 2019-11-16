module Falsify
  # An amount allocated by discount applications.
  # Each discount allocation is associated to a particular discount application.
  class DiscountAllocation
    # The discount amount allocated to the line in the shop currency.
    # @return [String]
    attr_accessor :amount
    # The index of the associated discount application in the order's discount_applications list.
    # @return [String]
    attr_accessor :discount_application_index
    # The discount amount allocated to the line item in shop and presentment currencies.
    # @return [PriceSet]
    attr_accessor :amount_set
  end
end
