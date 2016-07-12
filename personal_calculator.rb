require "sinatra/base"
require "json"

class PersonalCalculator < Sinatra::Base
  post "/age" do 
    @request_body = JSON.parse(request.body.read)

    { request: @request_body, age: 20 }.to_json
  end
end