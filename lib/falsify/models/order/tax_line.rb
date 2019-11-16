module Falsify
  # Details a tax applied to a LineItem.
  class TaxLine
    # The name of the tax.
    # @return [String]
    attr_accessor :title
    # The amount added to the order for this tax in the shop currency.
    # @return [String]
    attr_accessor :price
    # The tax rate applied to the order to calculate the tax price.
    # @return [String]
    attr_accessor :rate
  end
end
