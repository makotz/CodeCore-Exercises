require "./cookie.rb"
require "minitest/autorun"

class CookieTest < MiniTest::Test

  # def test_addition
  #   a = 1
  #   b = 2
  #   assert_equal(4, a + b)
  # end

  def test_calorie_count
    c = Cookie.new
    c.sugar = 10
    c.flour = 15
    assert_equal(85, c.calorie_count)
  end

end
