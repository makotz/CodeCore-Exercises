require "sinatra"#{Sinatra access}
require "sinatra/reloader"

enable :sessions

# This enables us to use PATCH and DELETE requests
use Rack::MethodOverride

helpers do
  def protected!
    return if authorized?
    headers['WWW-Authenticate'] = 'Basic realm="Restricted Area"'
    halt 401, "Not authorized\n"
  end

  def authorized?
    @auth ||=  Rack::Auth::Basic::Request.new(request.env)
    @auth.provided? and @auth.basic? and @auth.credentials and @auth.credentials == ['admin', 'admin']
  end
end

get "/" do
  session[:name] = "Makoto"
  protected!
  @portion = params[:portion]
  erb :index, layout: :app_layout
end

post '/split' do
  @amount = params[:amount].to_f
  @tax = params[:tax].to_f
  @tip = params[:tip].to_f
  @num = params[:num].to_i
  if @num > 0
    @portion = (@amount+(@amount*@tax/100)+(@amount*@tip/100))/@num
  else
    @error = "Please put valid input"
  end
  erb :index, layout: :app_layout
  # redirect to ("/?portion=#{@portion}")
end

get "/change_color/:color" do |color|
  session[:color] = color
  # redirect to("/")
  redirect back
end

get "/delete_me" do
  erb :delete_me, layout: :app_layout
end

delete "/perform_delete" do
  "Performing delete!"
end
