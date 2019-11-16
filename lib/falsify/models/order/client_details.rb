module Falsify
  # Information about the browser that the customer used when they placed their order.
  class ClientDetails
    # The languages and locales that the browser understands.
    # @return [String]
    attr_accessor :accept_language
    # The browser screen height in pixels, if available.
    # @return [Integer]
    attr_accessor :browser_height
    # The browser IP address.
    # @return [String]
    attr_accessor :browser_ip
    # The browser screen width in pixels, if available.
    # @return [Integer]
    attr_accessor :browser_width
    # A hash of the session.
    # @return [String]
    attr_accessor :session_hash
    # Details of the browsing client, including software and operating versions.
    # @return [String]
    attr_accessor :user_agent

    # @param hash [Hash]
    # @return [ClientDetails]
    def create_from_hash(hash)
      cd = ClientDetails.new
      cd.accept_language = hash[:accept_language]
      cd.browser_height = hash[:browser_height]
      cd.browser_ip = hash[:browser_ip]
      cd.browser_width = hash[:browser_width]
      cd.session_hash = hash[:session_hash]
      cd.user_agent = hash[:user_agent]
      return cd
    end
  end
end
