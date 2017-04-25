require "sinatra/base"

class Vansh < Sinatra::Base
  get '/' do
    "It works!"
  end
end
