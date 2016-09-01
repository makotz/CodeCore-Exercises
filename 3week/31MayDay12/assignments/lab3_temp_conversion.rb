require "rack"
# require 'pry'

class MyApplication

 def self.call(env)
   request = Rack::Request.new(env)
   puts request.params
   temp = (request.params["temp"].to_i * 9/5 + 32).to_s



   [200,{"Content-Type" => "text/html"}, [temp]]
 end


end

Rack::Handler::WEBrick.run MyApplication
