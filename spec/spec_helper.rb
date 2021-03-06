# Set up gems listed in the Gemfile.
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)
require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])

require 'framework'

require 'minitest/reporters'
require 'minitest/pride'
require 'minitest/autorun'
require 'minitest/focus'
require 'awesome_print'

Bundler.require(:default, Framework.env)

Minitest::Reporters.use! Minitest::Reporters::ProgressReporter.new

Framework::Application.new(env: 'test') do |app|
  app.init!
  app.hint("Running tests")
end

