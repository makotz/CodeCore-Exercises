require "./student.rb"
require "minitest/autorun"

class StudentTest < MiniTest::Test

  # def test_fullname
  #   n = Student.new("James", "Bond", 64)
  #   assert_equal("James Bond", n.full_name)
  # end

  def test_grade
    n = Student.new("James", "Bond", 95)
    assert_equal("A", n.grade)
  end
end
