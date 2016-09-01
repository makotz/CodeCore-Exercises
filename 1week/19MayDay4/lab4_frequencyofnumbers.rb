# frequency_hash = Hash.new(0)
#
# array.each do |integer|
#     frequency_hash[integer] += 1
#   end
#
#   p frequency_hash
# Given an array of number such as:
# array = [1,2,3,4,4,4,2,3,3,3]
# Write a piece of code that will generate a hash of frequencies that looks like:
# hash {1 => 1, 2 => 2, 3 => 4, 4 => 3}
# Stretch: Attempt to do the exercise in one line of code using methods like `each_with_object`.

array = [1,2,3,4,4,4,2,3,3,3]

hash = Hash.new(0)

array.each do |x|
  hash[x] += 1
end

p hash
