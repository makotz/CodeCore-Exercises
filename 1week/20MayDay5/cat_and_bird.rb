module HelperMethods
  def random_number
    rand(1..2)
  end
end


class Animal
  def initialize(cat, bird)
    @cat = cat
    @bird = bird
  end
end

  class Cat < Animal
    include HelperMethods
    def catch
      if random_number == 2
      puts "#{@cat} catched and ate #{@bird}."
      else
      puts "#{@bird} got away from #{@cat}."
      end
    end

    def catch_a_hundered
      success_cat_counter = 0
      birds_left = 100

      (0..10).each do |x|
         if random_number == 2
          #  puts "#{@cat} catched and ate #{@bird}."
           success_cat_counter += 1
           birds_left -= 1
        #  else
          #  puts "#{@bird} got away from #{@cat}."
         end
       end
       puts "#{success_cat_counter} cats got a bird!"
       puts "#{birds_left} birds survived!"
    end

  end


  class Bird < Animal
  end

##########################################################################################
#Solution

class Animal
  attr_accessor :name, :weight, :land_speed, :swimming_speed, :evasion

  def initialize(name)
    @name = name
    @evasion = 1
  end

  def eat(thing)
  end

  def die!
  end
end

class Cat < Animal
  def catch(animal)
    if rand > animal.evasion
      puts "#{name} caught #{animal.name}, the #{animal.class.to_s.downcase}"
    else
      puts "#{animal.name} evaded #{name}"
    end
  end
end

class Bird < Animal
  attr_accessor :air_speed, :wing_span

  def initialize(*args)
    super(*args)
    @evasion = 0.5
  end
end

class Rat < Animal
  def initialize(*args)
    super(*args)
    @evasion = 0.2
  end
end
