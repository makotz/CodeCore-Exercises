require "sinatra"
require "sinatra/reloader"

get "/" do
  erb :index, layout: :app_layout
end

post "/" do
  @numbers_list = params[:]
  @largest_number = largest_number(@numbers_list)
  erb :index, layout: :app_layout
end

def largest_number(numbers_list)
  numbers_list.split(',').map(&:to_i).sort.last
end
