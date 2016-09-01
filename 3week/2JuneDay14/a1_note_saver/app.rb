require "sinatra"
require "sinatra/reloader"
enable :sessions
$hash = {}

get "/" do
  erb :index, layout: :app_layout
end

post '/archive' do
  if params[:title] != nil || params[:note] != nil
    session[:title] = params[:title]
    session[:note] = params[:note]
    $hash[session[:title]] = session[:note]
  end
  erb :archive, layout: :app_layout
end

delete '/' do
  a = params[:whichone?].to_s
  puts a
  puts $hash
  $hash.delete(a)
  puts $hash
  erb :archive, layout: :app_layout
end
