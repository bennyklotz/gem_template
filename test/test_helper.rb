# Set proper RACK_ENV if gem is a rack app/middleware
# ENV['RACK_ENV'] = 'test'

if ENV['COVERAGE']
  require 'simplecov'

  SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
    SimpleCov::Formatter::HTMLFormatter
  ]

  SimpleCov.start do
    project_name 'gem_template'
    # add_filter '/test/'
    # add_filter '/doc/'
    # Add filters where coverage wont be affected
  end
end

# Include your test dependencies here
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/mock'

Minitest::Reporters.use!(
  Minitest::Reporters::DefaultReporter.new,
  ENV,
  Minitest.backtrace_filter
)

# require 'rack/test'
# require 'json'

# Load gem files
require 'gem_template'
