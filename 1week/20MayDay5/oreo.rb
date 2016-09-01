require "./cookie.rb"

#We define the oreo class to inherit from the "Cookies" class this means, by default, the Oreo class wil have all the methods and attribute accessors deifned for it as if it were the Cookie class. Behaves like Cookies.

class Oreo < Cookie
  attr_accessor :filling
  #can inser into filling with o.filling = "Milk"

  #Override b/c oreo has filling in it as well
  def details
    "This Oreo cookie has #{sugar}g of sugar and #{flour}g of flour and #{fillling}filling."
  end

  def eat
    puts "Dip in milk"
    super #this will call a method with the same name in the parent class
  end

end
