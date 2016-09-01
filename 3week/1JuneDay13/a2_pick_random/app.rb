require "sinatra"
require "sinatra/reloader"


get "/" do
  erb(:index, {layout: :app_layout})
end

post '/' do
  @nameArray = params[:names].split(', ')
  puts @nameArray
  @randNum = rand(0...@nameArray.length)
  puts @randNum
  @chosenName = @nameArray[@randNum].capitalize
  puts @chosenName
  erb(:index, {layout: :app_layout})
end
