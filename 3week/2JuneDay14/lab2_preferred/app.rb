require "sinatra"
require "sinatra/reloader"
enable :sessions

get "/" do
  erb :index, layout: :app_layout
end

get '/language' do
  erb :language, layout: :app_layout
end

post "/language" do
  session[:name] = params[:name]
  @language = params[:lang]
  if @language == "French"
    session[:language] = "Bonjour "
  elsif @language == "English"
    session[:language] = "Hello "
  else
    session[:language] = "Hola "
  end
  erb :index, layout: :app_layout
end
