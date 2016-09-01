require "rack"

class MyApplication

  def self.call(env)
    request = Rack::Request.new(env)
    puts (request.params["temp"].to_i * (9/5) + 32)
    [200, {"Content-Type" => "text/html"}, ["dfsdklj"]]
  end

end

Rack::Handler::WEBrick.run MyApplication
