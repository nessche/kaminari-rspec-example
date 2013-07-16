kaminari-rspec Example
======================

This is a Rails application that servers as example on how to use the kaminari-rspec gem to write controller specs
where models are mocked.

The application has only one controller `ThingsController` which only has one action defined, `index`.

The interesting part of the app is in the spec for the controller (`spec/controllers/things_controller_spec.rb`) which
shows how to use the kaminari-rspec library with the different mocking frameworks supported so far.

The default framework used is RSpec's built-in double mechanism, edit `spec_helper.rb` to switch to another framework.