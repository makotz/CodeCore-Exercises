require "rack"
# require 'pry'

class MyApplication

 def self.call(env)
   request = Rack::Request.new(env)
   puts request.params
   grade = request.params["score"].to_i
   lettergrade = "You got a(n)... "
   if grade > 90
     lettergrade += "A!! Congrats!"
   elsif grade > 80
     lettergrade += "B! Not bad"
   elsif grade > 70
     lettergrade += "C. Next time!"
   elsif grade > 60
     lettergrade += "D. mehhhhhh not very good"
   else
     lettergrade += "F. Wow you suck"
   end

   [200,{"Content-Type" => "text/html"}, ["<h1>#{lettergrade}</h1>"]]
 end


end

Rack::Handler::WEBrick.run MyApplication
