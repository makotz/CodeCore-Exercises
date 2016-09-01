Rails.application.routes.draw do

  get ({"/about" => "home#about"})
  root "home#index"

  get "/cowsay" => "cowsay#index"

  post "/cowsay" => "cowsay#create", as: :cowsay_submit

  get "/temp_converter"  => "temp_converter#index"
  post "/temp_converter" => "temp_converter#index"

  get "/bill_splitter"  => "bill_splitter#index"
  post "/bill_splitter" => "bill_splitter#create"

  get "/winner"  => "winner#index"
  post "/winner" => "winner#create"

  get "/length" => "length#index"
  post "/length" => "length#index"
end
