require "sinatra"
require "sinatra/reloader"#You don't need to restart it again
require "faker"

#REST API? -verbs
get "/" do
  # "<h1>Good morning Cohort 13!</h1>" +
  # #h1 tag is only recognizable within HTML
  # "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>"
  @title = "Welcome to Cohort 13 Consulting"
  @greetings = ["Hi", "Bonjour","Hola"]
  erb(:index,{layout: :app_layout}) #ALWAYS refers to views
end
#WEBrick starts up the server by sinatra

#Embedded ruby allows html to exist in ruby

get "/portfolio/:name" do |name|
  @title = name
  erb(:portfolio, {layout: :app_layout})
end

get "/about" do
  @title = "About Us"
  erb(:about, {layout: :app_layout})
end

get "/contact" do
  puts params
  @name = params[:name]
  @title = params[:title]
  puts "@name: #{@name}"
  puts "@title: #{@title}"
  erb(:contact, {layout: :app_layout})
end

get '/company' do
  "Hello World"
  erb(:company,{layout: :app_layout})
end

post '/company' do
  puts params
  @first_name = params[:first_name]
  erb(:success)
end

get '/convert' do
  erb(:convert, {layout: :app_layout})
end

post '/convert' do
  @temp_c = params[:temp_c].to_f
  @temp_f = @temp_c * 1.8 + 32
  erb(:convert, {layout: :app_layout})
end

get '/currency' do
  erb(:currency, {layout: :app_layout})
end

post '/currency' do
@cad = params[:CAD].to_f
@usd = (@cad * 0.76).round(2)
@yen = (@cad * 83.78).round(2)
@pnd = (@cad * 0.53).round(2)
  erb(:currency, {layout: :app_layout})
end
