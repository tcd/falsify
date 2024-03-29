# Falsify

![Shopify API Version](https://img.shields.io/badge/Shopify_API-2019--10-brightgreen.svg)
[![Gem](https://img.shields.io/gem/v/falsify)][rubygems]
[![Build Status](https://travis-ci.org/tcd/falsify.svg?branch=master)][travis-ci]
[![Coverage Status](https://coveralls.io/repos/github/tcd/falsify/badge.svg?branch=master)][coveralls-ci]
[![Inline docs](http://inch-ci.org/github/tcd/falsify.svg?branch=master)][inch-ci]
[![Documentation](http://img.shields.io/badge/docs-rubydoc.info-blue.svg)][rubydoc-gem]

[rubygems]: https://rubygems.org/gems/falsify
[travis-ci]: https://travis-ci.org/tcd/falsify
[coveralls-ci]: https://coveralls.io/github/tcd/falsify?branch=master
[inch-ci]: http://inch-ci.org/github/tcd/falsify
[rubydoc-github]: https://rubydoc.org/github/tcd/falsify/master
[rubydoc-gem]: https://www.rubydoc.info/gems/falsify/0.1.0

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

## Usage

## Development

This gem is made using [tcd/scrapify](https://github.com/tcd/scrapify) and [tcd/gql](https://github.com/tcd/gql).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tcd/falsify.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
