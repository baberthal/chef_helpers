# ChefHelpers
[![Gem Version](https://badge.fury.io/rb/chef_helpers.svg)](https://badge.fury.io/rb/chef_helpers)
[![Build Status](https://travis-ci.org/baberthal/chef_helpers.svg?branch=master)](https://travis-ci.org/baberthal/chef_helpers)

This gem provides a set of helper methods to use in chef recipies. Currently, the only implemented method is `#encrypt_password`, which takes a plain-text password and generates a shadow hash for use by the User resource.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'chef_helpers'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install chef_helpers

## Usage

Include the gem in your chef cookbook:

In a recipe:
```ruby
extend ChefHelpers
```

In an LWRP:
```ruby
include ChefHelpers
```

In any ruby file:
```ruby
include ChefHelpers
```

Encrypt a password like this:
```ruby
password = 'shhitsasecret'
shadow_hash = encrypt_password(password)
```

Use it in a user recipe like this:
```ruby
password_hash = encrypt_password('shhitsasecret')

user 'my_user' do
  password password_hash
  ...
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork this repo
2. Create a new branch for your feature
3. Write specs for the feature / method
4. Implement the feature / method
5. Create a pull request
6. ???
7. Profit

Bug reports and pull requests are welcome on GitHub at https://github.com/baberthal/chef_helpers.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
