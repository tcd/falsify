module Falsify
  # Valid values for the `tracking_company` field of a {Fulfillment}.
  # @return [Array<String>]
  def self.supported_tracking_companies
    return [
      "4PX",
      "APC",
      "Amazon Logistics UK",
      "Amazon Logistics US",
      "Australia Post",
      "Bluedart",
      "Canada Post",
      "China Post",
      "Chukou1",
      "Correios",
      "DHL Express",
      "DHL eCommerce",
      "DHL eCommerce Asia",
      "DPD",
      "DPD Local",
      "DPD UK",
      "Delhivery",
      "Eagle",
      "FSC",
      "FedEx",
      "FedEx UK",
      "GLS",
      "Globegistics",
      "Japan Post (EN)",
      "Japan Post (JA)",
      "La Poste",
      "New Zealand Post",
      "Newgistics",
      "PostNL",
      "PostNord",
      "Purolator",
      "Royal Mail",
      "SF Express",
      "Sagawa (EN)",
      "Sagawa (JA)",
      "Singapore Post",
      "TNT",
      "UPS",
      "USPS",
      "Whistl",
      "Yamato (EN)",
      "Yamato (JA)",
      "YunExpress",
    ]
  end
end
