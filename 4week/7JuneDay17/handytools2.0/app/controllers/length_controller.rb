class LengthController < ApplicationController

#1 = Meters, 2 = miles

  def index
    puts params
    if params[:to] == params[:from]
      @alert = "Select a conversion metric!"
    else
      @conversion = params[:from].to_f / params[:to].to_f
      @converted = params[:amount].to_f * @conversion
    end
  end
end
