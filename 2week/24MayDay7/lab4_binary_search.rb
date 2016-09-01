# Implement Binary search and linear search in Ruby then benchmarking them with an array of a 100 elements. Which one is faster?
# [Bonus]: Implement the binary search using recursion.

#Binary search

# array = [1,2,4,5,7,8,9,50,256,377]
#
# x = 5
# #
# def binary(x, array)
#   p array
#   left = 0
#   right = array.length-1
#   middle = ((left+right)/2)
#   unless array.length == 1
#  if array[middle] > x
#    right = middle-1
#    binary(x, array[0..right])
#  elsif middle < x
#    left = middle+1
#    binary(x, array[left..-1])
#  else
#    middle
#  end
#  end
# end
#
# p binary(x, array)

  # def binary(x, array)
  #   l = 0
  #   r = array.length-1
  #   m = (l+r)/2
  # unless array.length == 1
  #  if array[m] < x
  #    l = m+1
  #  elsif array[m] > x
  #    r = m-1
  #  else
  #    m
  #  end
  #  end
  # end

  # p binary(x, array)

#   def linear(x, array)
#     array[0...array.length].each do |a|
#       p y
#       if x == y
#         puts y
#       end
#     end
#   end
#
# linear(x, array)

# Binary Search recursion
array = [1,2,3,4,5,6,7,8,9,10,11]
x = 7

def recur(x, array, indcounter = 0)
  midInd = array.length/2
  if array.length == 1
    indcounter
  elsif x > array[midInd]
    recur(x, array[midInd+1..-1], indcounter += midInd+1)
  elsif x < array[midInd]
    recur(x, array[0...midInd], indcounter += 0)
  end
end



p recur(x, array)
