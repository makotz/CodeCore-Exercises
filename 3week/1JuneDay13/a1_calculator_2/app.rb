require "sinatra"
require "sinatra/reloader"

get "/" do
  erb(:index, {layout: :app_layout})
end


post "/" do
  @val1 = params["val1"].to_f
  @val2 = params["val2"].to_f
  @command = params["command"]
  case @command
  when "+"
    @total = @val1 + @val2
  when "-"
    @total = @val1 - @val2
  when "x"
    @total = @val1 * @val2
  when "/"
    if @val2 == 0
      @total = "You can't divide by zero!"
    else
    @total = @val1 / @val2
    end
  end
  erb(:index, {layout: :app_layout})
end
