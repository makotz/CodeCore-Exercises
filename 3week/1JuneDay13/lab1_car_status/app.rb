require "sinatra"
require "sinatra/reloader"

get "/" do
  erb(:index, {layout: :app_layout})
end

post "/" do
  @yearmodel = params[:year].to_f
  case
  when @yearmodel > 2016
    @comment = "That's brand new!"
  when @yearmodel > 2010
    @comment = "That's quite new!"
  when @yearmodel > 2000
    @comment = "That's kinda old!"
  when @yearmodel > 1900
    @comment = "That's supa old!"
  end
  erb(:index, {layout: :app_layout})
end
