# Build a class Animal that has two methods: "eat" that prints "I'm eating" and "walk" that prints "I'm walking". Make the class have two attribute accessors: name and color. Make the initialize method set those two variables.
#
# Now build a class called Dog that inherits from the Animal class. Add a new method to this class called bark that returns woof. Override the eat methods and make it print whatever the Animal class eat method prints and then print "Bones are yummy!".
#
# Now build a class called Cat that inherits from the Animal class.  Override the eat methods and make it print "Fish is yummy!".

class Animal
  attr_accessor :name, :color

  def initialize(name, color)
    @name = name
    @color = color
  end

  def eat
    puts "I'm eating"
  end

  def walk
    puts "I'm walking."
  end
end

  class Dog < Animal
    def bark
      "woof"
    end

    def eat
      super
      puts "Bones are yummy!"
    end
  end

  class Cat < Animal
    def eat
      puts "Fish is yummy!"
    end
  end
