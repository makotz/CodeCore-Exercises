require "sinatra"
require "sinatra/reloader"
require "pony"
$marketing = []
$sales = []
$tech = []

get "/" do
  erb :index, layout: :app_layout
end

post "/" do
  if params[:department].to_s != $profile[2]
  $profile = []
  $profile << params[:name].to_s
  $profile << params[:address].to_s
  $profile << params[:department].to_s
  $profile << params[:message].to_s
      if $profile[2] == "marketing"
        $marketing << $profile
      elsif $profile[2] == "sales"
        $sales << $profile
      else
        $tech << $profile
      end
  end

  erb :department, layout: :app_layout

  # pony1
  # Pony.mail(:to => 'makotoejima@gmail.com', :subject =>"#{@name},#{@department}", :body => "#{@message},#{@address}")
end


def pony1
Pony.options = {
   :subject => "Some Subject",
   :body => "This is the body.",
   :via => :smtp,
   :via_options => {
     :address              => 'smtp.gmail.com',
     :port                 => '587',
     :enable_starttls_auto => true,
     :user_name            => 'ponytester123@gmail.com',
     :password             => "12qwerty",
     :authentication       => :plain,
     :domain               => "localhost.localdomain"
   }
 }
 end
