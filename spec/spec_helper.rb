require 'rspec'
require 'simplecov'
require 'simplecov-console'
require 'coveralls'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new(
  [
    Coveralls::SimpleCov::Formatter,
    SimpleCov::Formatter::HTMLFormatter,
    SimpleCov::Formatter::Console
  ]
)
SimpleCov.minimum_coverage(90)
SimpleCov.start do
  add_filter '/vendor/'
end
