module HelperMethods
  def name_display
    name.squeeze(" ").capitalize
    end
    end

class User
  attr_accessor :name
  include HelperMethods
  end

class Car
  attr_accessor :name
  inlcude HelperMethod
end

u = User.new
u.name = "tam   Kbelli"

c = Car.new
car.name = "toyota    corolla"


puts u.name

#include vs extend
