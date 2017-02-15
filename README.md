# Rails::Internals

Like [chrome://net-internals](chrome://net-internals), but for Rails.

## Usage

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'rails-internals'
```

And then execute:

```bash
$ bundle
```

Then mount it at the desirable location inside your app's `config/routes.rb`.

For example, to mount the dashboard at `/rails-internals`, you would do:

```ruby
Rails.application.routes.draw do
  mount Rails::Internals::Engine => "/rails-internals"
end
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
