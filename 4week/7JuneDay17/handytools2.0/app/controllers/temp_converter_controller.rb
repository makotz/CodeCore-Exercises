class TempConverterController < ApplicationController
  def index
     if params[:temp].to_i.to_s == params[:temp].to_s
       if params[:temp] == "corf_farenheit"
        @degree = "F"
        @degree0 = "C"
        @original = params[:temp].to_i
        @converted = ((@original * 1.8)+32).round(2)
      else
        @degree = "C"
        @degree0 = "F"
        @original = params[:temp].to_i
        @converted = ((@original-32)/1.8).round(2)
      end
    else
      @warning = "Put a valid number!"
    end
  end
end
