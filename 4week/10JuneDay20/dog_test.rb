require "./dog.rb"
require "minitest/autorun"

class DogTest < MiniTest::Test

  def create_dog_with_three_bones
     @d = Dog.new
     @d.give_bone("small")
     @d.give_bone("medium")
     @d.give_bone("large")
   end

  def test_give_bone
    #Given
    d = Dog.new
    #When
    e = d.give_bone(3)
    #Then
    assert_equal(1, e)
  end

  def test_eat_bone
  create_dog_with_three_bones
    assert_equal("large", @d.eat_bone)
  end

  def test_bone_count
    create_dog_with_three_bones
    assert_equal(3, @d.bone_count)
  end

  def test_beyond_max
    create_dog_with_three_bones
    result_of_giving_bone = @d.give_bone("extra large")
    assert_equal(3, result_of_giving_bone)
  end

end
