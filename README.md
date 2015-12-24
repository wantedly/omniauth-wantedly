# OmniAuth::Wantedly

Wantedly OAuth2 Strategy for OmniAuth gem.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-wantedly', github: 'wantedly/omniauth-wantedly'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-wantedly

## Usage

```ruby
use OmniAuth::Builder do
    provider :wantedly, ENV["WANTEDLY_APP_ID"], ENV["WANTEDLY_APP_SECRET"]
end
```

Or, with Devise:

```ruby
  config.omniauth :wantedly, ENV["WANTEDLY_APP_ID"], ENV["WANTEDLY_APP_SECRET"]
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/wantedly/omniauth-wantedly.
