# Falsify

![Shopify API Version](https://img.shields.io/badge/Shopify_API-2019--10-brightgreen.svg)
[![Build Status](https://travis-ci.org/tcd/falsify.svg?branch=master)](https://travis-ci.org/tcd/falsify)
[![Coverage Status](https://coveralls.io/repos/github/tcd/falsify/badge.svg?branch=master)](https://coveralls.io/github/tcd/falsify?branch=master)
[![Inline docs](http://inch-ci.org/github/tcd/falsify.svg?branch=master)](http://inch-ci.org/github/tcd/falsify)
[![Documentation](http://img.shields.io/badge/docs-rubydoc.org-blue.svg)](https://rubydoc.org/github/tcd/falsify/master)

Models for Shopify resources (WIP).

Can be used with the [shopify_api gem](https://github.com/Shopify/shopify_api), which doesn't itself provide any documentation on the resources it wraps.

Also has methods that use [faker](https://github.com/faker-ruby/faker) to generate fake Shopify data.
Could be useful to for populating product, customer, order, etc. data for a development store to test against.

Enum values are represented using [enumerize](https://github.com/brainspec/enumerize), so they will work without Rails,
but are also compatible with [ActiveRecord enums](https://api.rubyonrails.org/v6.0.0/classes/ActiveRecord/Enum.html).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'falsify'
```

And then execute:

```sh
bundle
```
Or install it yourself as:

```sh
gem install falsify
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tcd/falsify.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
