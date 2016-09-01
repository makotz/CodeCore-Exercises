# # Make two classes dog and bones. The dog class must have an initialize method that takes dogs colour and type. The bone must have an initialize method that assigns a size for the bone.
#
# The dog class must have a give method that takes a bone object and adds it to an array of bones for the dog. The dog can take a maximum of three bones so if you give it more than three it will will print, I have too many bones.
#
# The dog class must have an eat bone method so that when you call it it removes a bone from the array of bones and prints "yummy! I ate 'big' bone" the 'big' part comes from the size attribute of bone.

class Dog

  def initialize(colour, type)
    @colour = colour
    @type = type
    @array = []
  end

  def add_bone(new_bone)
    if @array.length < 3
      @array << new_bone
      p @array
    else
      puts "I have too many bones!"
    end
  end

  def eat_bone
    if @array.length > 0
    puts "yummy! I ate size #{@array.pop.bone_size} bone"
    @array.pop
    else
    puts "no more bones!"
    end
  end

end

class Bones
  attr_accessor :bone_size
  def initialize(bone_size)
    @bone_size = bone_size
  end

  def check
    p @bone_size
  end
end
