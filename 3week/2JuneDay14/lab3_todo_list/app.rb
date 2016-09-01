require "sinatra"
require "sinatra/reloader"
enable :sessions
array = []

get "/" do
  erb :index, layout: :app_layout
end

post "/" do
  if params[:todo] != nil && array[-1] != params[:todo].to_s
    puts params[:todo]
    array << params[:todo]
    p array
    session[:todo] = array
  end
  erb :tasks, layout: :app_layout
end

get '/tasks' do
  erb :tasks, layout: :app_layout
end
