lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "falsify/version"

Gem::Specification.new do |spec|
  spec.name          = "falsify"
  spec.version       = Falsify::VERSION
  spec.authors       = ["Clay Dunston"]
  spec.email         = ["claydunston@gmail.com"]

  spec.summary       = "Shopify resources"
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/tcd/falsify"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"]    = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"]   = "https://github.com/tcd/falsify/blob/master/changelog.md"
  spec.metadata["yard.run"]        = "yri" # use "yard" to build full HTML docs.

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "activesupport", "6.0.0"
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "enumerize", "~> 2.2.2"
  # spec.add_development_dependency "enumerize", "~> 2.3"
  spec.add_development_dependency "minitest", "~> 5.8"
  spec.add_development_dependency "pry", "~> 0.12.2"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "simplecov"

end
