# Write a code that takes an array and then returns another array that contains all the numbers that are greater than 10. The code should not fail if the array contains strings / non-number elements. for example, this array:
# my_array = [1,4,5,23,14,"Hello there", false, nil]
# Should return:
# [23,14]

my_array = [1,4,5,23,14,"Hello there", false, nil]
# new_array = []
#
# my_array.map! do |x|
#   if x.is_a?(Integer) && x > 10
#     new_array << x
#   end
# end
#
# p new_array


new_array = Array.new()

my_array.map! do |x|
  if x.is_a?(Integer) && x > 10
    new_array << x
  end
end

p new_array
