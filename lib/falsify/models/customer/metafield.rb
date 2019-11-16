module Falsify
  # Attaches additional metadata to a shop's resources
  class Metafield
    # An identifier for the metafield (maximum of 30 characters, required)
    # @return [Boolean]
    attr_accessor :key
    # A container for a set of metadata (maximum of 20 characters, required)
    # Namespaces help distinguish between metadata that you created and metadata created by another individual with a similar namespace.
    # @return [String]
    attr_accessor :namespace
    # Information to be stored as metadata (required)
    # @return [String,Integer]
    attr_accessor :value
    # The value type (required)
    # Valid values: `string` and `integer`.
    # @return [String]
    attr_accessor :value_type
    # Additional information about the metafield (optional)
    # @return [String,nil]
    attr_accessor :description

    # @param key [String]
    # @param namespace [String]
    # @param value [String,Integer]
    # @param value_type [String]
    # @param description [String]
    # @return [void]
    def initialize(key:, namespace:, value:, value_type:, description: nil)
      self.key = key
      self.namespace = namespace
      self.value = value
      self.value_type = value_type
      self.description = description
    end
  end
end
