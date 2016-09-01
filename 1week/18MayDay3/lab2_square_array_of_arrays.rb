# Given an array of arrays:
# array = [[2,3,4], [5,6,7], [6,7,8]]
#
# Write a piece of code that will take that array and give back an array of arrays with each element multiplied by itself so you will get back:
#
# 1 [[4, 9, 16], [25, 36, 49], [36, 49, 64]]

array = [[2,3,4], [5,6,7], [6,7,8]]

# array.map! do |x|
#   x.map! do |y|
#     y = y ** 2
#   end
# end

array.map! {|x| x.map! { |y| y = y ** 2}}

p array
