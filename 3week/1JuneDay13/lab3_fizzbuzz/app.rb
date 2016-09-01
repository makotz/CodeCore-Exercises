require "sinatra"
require "sinatra/reloader"

get "/fizzbuzz" do
  puts params
  @num1 = params["number1"].to_f
  @num2 = params["number2"].to_f
  @newarray = []
  1.upto(100) do |x|
    if x % @num1*@num2 == 0
      @newarray << "fizzbuzz"
    elsif x % @num1 == 0
      @newarray << "fizz"
    elsif x % @num2 == 0
      @newarray << "buzz"
    else
      @newarray << x
    end
  end
  erb(:index, {layout: :app_layout})
end
