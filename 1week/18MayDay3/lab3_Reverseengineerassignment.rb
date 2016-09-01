# Write a code that takes an array and returns the reverse of an array, your code should take an array:
# array = [1,2,3,4]
#
# and give back:
# [4,3,2,1]
#
# Without using the `reverse` method that comes with Ruby for arrays.

array = [1,2,3,4]

new_array = []


array_length-1.downto(0) do |x|
  new_array << array[x]
end

p new_array
