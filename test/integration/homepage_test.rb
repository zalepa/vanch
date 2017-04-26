require_relative '../test_helper'

class HelloWorldTest < MiniTest::Unit::TestCase
  include Capybara::DSL
  # Capybara.default_driver = :selenium # <-- use Selenium driver

  def test_it_works
    visit '/'
    assert page.has_content?('It works')
  end
end
