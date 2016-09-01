# Write a method that returns the maximum number in array in two ways:
# 1- Using a loop
# 2- Using recursion
#
# Benchmark your two solutions.
#
# def loop_max(x)
#   max = -1.0/0 #Negative Infinity
#   x.each do |elm|
#     if elm >= max
#       max = element
#     end
#   end
#   max
# end
#
# def max(array)
#   unless array.length == 1
#     if array[0] >= array[-1]
#       max(array.take(array.length-1))
#     else
#       max(array.drop(1))
#     end
#   end
#   array[0]
# end
#
my_array = [1,4,6,76,9,11,53,22]

# p maxr(my_array)
# # def maximum_recursion(array)
#
#
#
# def maxr(array)
#  if array.size == 1
#    array[0]
#  else
#    if array[0] >= array[-1]
#      maxr(array.take(array.length-1))
#    else
#      maxr(array.drop(1))
#    end
#  end
# end
#
# def max_rec(array)
#   if array.size == 1
#     array [0]
#   else
#     if array.first <= array.last
#       max_rec(array.drop(1))
#     else
#       max_rec(array.take(array.length-1))
#     end
#   end
# end


####################################################
# May 28

my_array = [1,4,6,76,9,11,53,22]
# y = my_array[0]
#
# my_array.each do |x|
#   if x > y
#     y = x
#   end
# end
#
# puts y

def recur(array)
  if array.size == 1
    puts array
  elsif array[0] > array[-1]
    array.pop
    recur(array)
  else
    array = array.shift
    recur(array)
  end
end


recur(my_array)
