require "rack"
# require 'pry'

class MyApplication
output = 1

 def self.call(env)
   request = Rack::Request.new(env)
   p request
   p env['REQUEST_PATH']
   puts request.params.to_s
   if env['REQUEST_PATH'].include? "greeting"
     output = "<h1>Hello #{request.params["name"].to_s.capitalize}</h1>"
   else
     output = "Welcome to my application"
   end
   p output
   [200,{"Content-Type" => "text/html"}, [output]]
 end


end

Rack::Handler::WEBrick.run MyApplication
