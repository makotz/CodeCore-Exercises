class Cookie
  attr_accessor :sugar
  attr_accessor :flour
  attr_accessor :butter

  def initialize(sugar, flour, butter)
    @sugar, @flour, @butter = sugar, flour, butter
  end

  def calorie_count
    sugar * 3.87 + flour * 3.64
  end

end
