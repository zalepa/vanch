$:.unshift File.expand_path('../lib', __FILE__)
require 'vansh'
run Sinatra::Application
