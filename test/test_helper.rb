ENV['RACK_ENV'] = 'test'

$:.unshift File.expand_path('../../lib', __FILE__)

require 'vansh'
require 'minitest/autorun'
require 'minitest/reporters'
require 'capybara'
require 'capybara/dsl'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class MiniTest::Unit::TestCase
  def setup
    Capybara.app = ::Vansh.new
  end
end
