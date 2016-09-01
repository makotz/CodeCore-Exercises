require "sinatra"
require "sinatra/reloader"
$history = []

get "/" do
  erb(:index, {layout: :app_layout})
end


post '/' do
  puts params
  @operation = params[:execution]
  @val1 = params[:val1].to_f
  @val2 = params[:val2].to_f
  if params[:execution] == "add"
    @total = @val1 + @val2
    @command = "+"
    $history << "#{@val1} + #{@val2} = #{@total}"
  elsif params[:execution] == "minus"
    @total = @val1 - @val2
    @command = "-"
    $history << "#{@val1} - #{@val2} = #{@total}"
  elsif params[:execution] == "product"
    @total = @val1 * @val2
    @command = "*"
    $history << "#{@val1} * #{@val2} = #{@total}"
  else
    @total = @val1 / @val2
    @command = "/"
    $history << "#{@val1} / #{@val2} = #{@total}"
  end
  erb(:index, {layout: :app_layout})
end
