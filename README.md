# Simple Assertions for Rails Tests

Adds a handful of simple, one-liner association and validation assertions to ActiveSupport::TestCase.

Of course you shouldn't test ActiveRecord associations and validations. Of course. However it helps me think through the domain model to write them out in the test case, and I just wanted convenience methods to keep those assertions to one line.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails-simple-assertions'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails-simple-assertions

In `test_helper.rb`:

    require 'rails_simple_assertions'

## Usage

    assert_association Post, :has_many, :comments
    assert_presence_validation Post, :title
    assert_uniqueness_validation User, :email, users(:adam)

## Contributing

1. Fork it ( https://github.com/hpoydar/rails-simple-assertions/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
