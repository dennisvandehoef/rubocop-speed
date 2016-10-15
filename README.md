[![Build Status](https://travis-ci.org/dennisvandehoef/rubocop-speed.svg?branch=master)](https://travis-ci.org/dennisvandehoef/rubocop-speed)

# Rubocop::Speed

We all love rubocop, but seadly its config is not always good for the execution time of our code.

This gem overrides the default config with the speed optimized options.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rubocop-speed'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rubocop-speed

## Usage

You need to tell RuboCop to load the Speed extension. There are three aways to do this:

### RuboCop configuration file

Put this into your `.rubocop.yml`.

```
require: rubocop-rspec
```

Now you can run `rubocop` and it will automatically load the RuboCop Speed cops together with the standard cops.

### Command line

```bash
rubocop --require rubocop-speed
```

### Rake task

```ruby
RuboCop::RakeTask.new do |task|
  task.requires << 'rubocop-speed'
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dennisvdhoef/rubocop-speed. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
