require "sinatra"
require "sinatra/reloader"

get "/" do
  erb(:index, {layout: :app_layout})
end

post "/" do
  if params["Q1"] == "With deadline"
    if params["Q2"] == "Rational"
      if params["Q3"] == "Ideas"
        erb(:rational, {layout: :app_layout})
      else
        erb(:guardian, {layout: :app_layout})
      end
    else
      if params["Q3"] == "Ideas"
        erb(:idealist, {layout: :app_layout})
      else
        erb(:guardian, {layout: :app_layout})
      end
    end
  else
    if params["Q2"] == "Rational"
      if params["Q3"] == "Ideas"
        erb(:rational, {layout: :app_layout})
      else
        erb(:artisan, {layout: :app_layout})
      end
    else
      if params["Q3"] == "Ideas"
        erb(:idealist, {layout: :app_layout})
      else
        erb(:artisan, {layout: :app_layout})
      end
    end
  end
end
