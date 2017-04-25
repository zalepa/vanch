ENV['RACK_ENV'] = 'test'

$:.unshift File.expand_path('../../lib', __FILE__)

require 'vansh'
require 'capybara'
require 'capybara/dsl'
require 'test/unit'

class Test::Unit::TestCase
  def setup
    Capybara.app = ::Vansh.new
  end
end