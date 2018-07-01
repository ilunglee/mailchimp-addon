# MCAddon
Short description and motivation.

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'mc_addon'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install mc_addon
```

## Usage
#### SETUP
```ruby
MCAddon.setup do |s|
  s.api_key = ENV['MAILCHIMP_API_KEY']
  s.list_id = ENV['MAILCHIMP_LIST_ID']
  s.timeout = ENV['MAILCHIMP_TIMEOUT']
end
```
---
#### RETRIEVE MEMBERS
```ruby
connect = MCAddon::List.members
# OR
connect = MCAddon::List.connect(list_id: YOUR_LIST_ID)
```
---
#### SUBSCRIBE
```ruby
connect = MCAddon::List.subscribe(email: YOUR_EMAIL)
# OR
connect = MCAddon::List.subscribe(email: YOUR_EMAIL, list_id: YOUR_LIST_ID)
```

## TODO
- unsubscribe
- list info
- campaigns
- mandrill methods

## Contributing
- Clone this repo and go into the gem top-level directory and run `bundle install`
- To run the specs run `rspec spec`.
- To access irb development environment run `ruby bin/console`
- Submit a pull request for and explain what your changes are.
ps. You will usually want to write tests for your changes

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
