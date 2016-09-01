#Classes and Objects

#One class(cookie cutter, blueprint) and many objects(dough, house)
class Cookie

  #The @sugar is a case of an instance variable.
  def initialize(sugar_amount, flour_amount)
    @sugar = sugar_amount
    @flour = flour_amount
    puts "about to create a cookie object!"
  end

  #Accessing instance variable
  attr_reader :sugar
  # Equivalent to
  # def sugar
  #   @sugar
  # end
  #Usually called a GETTER method
  #c.sugar #==> 10

  attr_writer :sugar
  # Equivalent to
  # def set_sugar(new_amount)
  #   @sugar = new_amount
  # end
  # This is usually a SETTER method

  attr_accessor :flour
  #Does both attr_reader and attr_writer stuff


  def details
    "This cookie has #{@sugar}g of sugar and #{@flour}g of flour."
  end

  #this defines a public instance method called "eat"
  def eat
    "Eating the cookie"
  end

  #If the method is called after the class is loaded it will have access to the private method
  def eat_and_bake
    puts bake
      eat
  end

  #This defines a class method that can be called on a class without the need to call an object
  def self.info
    "I'm the cookie cutter"
  end

  private
  #methods defined after the private keyword will be treated as 'private' instance methods. They can be called from any methods within this class "Cookie" but you cant call them directly form teh outside for isntace, in irb doing:
  # c = Cookie.new
  # c.bake
  # will return an error
  def bake
    "Baking the cookie"
  end

  def prepare
    "Preparing the cookie"
  end
end

#If capitalized, its a constant and its advised not to change.
#Class should not change or CamelCase
#Good practice to have one class per file and the fileannsame should be snake_case of the class so in this case, cookie.rb


#Keep as many methods as private as possible
