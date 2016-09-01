

require "rack"

class MyApplication
  output = 1
  hash = {}
  dict = File.open("dict.txt")
  dict2 = dict.read
  array = []
  dict2.each_line('') do |x|
    array << x
  end
  array.each do |x|
    array1 = x.split(' ')
    if array1[0] != nil
      hash[array1[0]] = (array1[1..-1].compact.join(' '))
    end
  end
  # puts hash

  def self.call(env)
    request = Rack::Request.new(env)
    puts request.params.to_s
    if env['REQUEST_PATH'].include? "word"
      output = "<h1>Hello #{hash[request.params["word"]].to_s.capitalize}</h1>"
    else
      output = "Welcome to my application"
    end
    p output
    [200,{"Content-Type" => "text/html"}, [output]]
  end


end

Rack::Handler::WEBrick.run MyApplication
