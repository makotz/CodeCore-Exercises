class FizzBuzz

attr_accessor :first_num, :second_num

  def initialize(first_num, second_num)
    @first_num = first_num
    @second_num = second_num
    @array = []
  end

  def run
    (1..100).each do |num|
      if num % (@first_num * @second_num) == 0
        @array << "Fizzbuzz"
      elsif num % @first_num == 0
        @array << "Fizz"
      elsif num % @second_num == 0
        @array << "Buzz"
      else
        @array << num
      end
    end
    p @array
  end
end
