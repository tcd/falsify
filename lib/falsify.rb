# Shopify resources.
module Falsify; end

Dir.glob(File.join(__dir__, "falsify", "/**/*.rb")).sort.each { |file| require file }
