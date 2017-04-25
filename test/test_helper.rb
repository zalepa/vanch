ENV['RACK_ENV'] = 'test'

require_relative '../vansh'
require 'capybara'
require 'capybara/dsl'
require 'test/unit'