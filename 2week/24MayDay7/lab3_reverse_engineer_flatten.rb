# Reverse engineer Array’s `flatten` method using recursion.

array = [[1, 2, 3], [4, 44, 6, [7, 8]], 9, 10]

def flatten(array, new_array = [])
  unless array.length == 0
    if array[0].is_a?(Integer)
      new_array << array[0]
      flatten(array[1..-1], new_array)
    else
      flatten(array[0], new_array)
      flatten(array[1..-1], new_array)
    end
  end
  new_array
end

p flatten(array)
#

#
#
#
#
#
#
# def flatten(array)
# new_array = []
#   unless array.length == 0
#     if array[0].is_a?(Integer)
#     new_array << array[0]
#     puts new_array
#     flatten(array[1..-1])
#     elsif array[0].is_a?(Array)
#     flatten(array[0])
#     flatten(array[1..-1])
#     end
#   end
# end

flatten(array)

# array = [[1, 2, 3], [4, 44, 6, [7, 8]], 9, 10]
#
# flatten(array)
#
# ***********************************************
# #Steve
#
# def flatten(arr)
#   arr.reduce([]) do |f_arr, curr|
#     if curr.is_a? Array
#       f_arr + flatten(curr)
#     else
#     f+arr + curr
#     end
#   end
# end
#
# arr = [1,2,[3,[4,5,6,]10,11]]
