SpreeOncePerUserPromotion
=========================

Rule for promotions to have a user apply it only once.

Installation
------------

Add spree_once_per_user_promotion to your Gemfile:

```ruby
gem 'spree_once_per_user_promotion'
```

Bundle your dependencies:

```shell
bundle
```

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

```shell
bundle
bundle exec rake test_app
bundle exec rspec spec
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_once_per_user_promotion/factories'
```

Copyright (c) 2013 Peter Berkenbosch, released under the New BSD License
