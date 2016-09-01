require "./rectangle.rb"
require "minitest/autorun"

class RectangleTest < MiniTest::Test

  # def test_area
    #Given: Rectangle wit hte hsame length and height
  #   r = Rectangle.new
  #   r.width = 5
  #   r.length = 6

    #When: call is_square? method
    #Then:
  #   assert_equal(30, r.area)
  # end

  def test_square
    r = Rectangle.new
    r.width = 6
    r.length = 6
    assert_equal(true, r.is_square?)
  end

end
