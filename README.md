# Warning!

This library is not maintained and its use is deprecated.

# Jwage

A Ruby implementation for Japan minimum wage.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jwage'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jwage

## Usage

```
today = Date.today
# => #<Date: 2019-09-18>

wage = Jwage.find('東京都', today)
wage.value    # 985
wage.start_at # #<Date: 2018-10-01>
wage.end_at   # #<Date: 2019-09-30>


wage = Jwage.find('03', today)
wage.value    # 762
wage.start_at # #<Date: 2018-10-01>
wage.end_at   # #<Date: 2019-10-03>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/jwage.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
