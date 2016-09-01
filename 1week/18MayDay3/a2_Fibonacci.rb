# Given a number N from the user. Generate an array that contains the first N numbers of the fibonacci sequence.
# note: In mathematics, the Fibonacci numbers or Fibonacci series or Fibonacci sequence are the numbers in the following integer sequence:
# 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ...
# The sequence starts with 1 and then every number is the sum of the two previous numbers.

##############################
# puts "Give me a number!"
# number = gets.chomp.to_i
#
# fibonacci_array = []
# number.times do |i|
#   if (i == 0 || i == 1)
#     fibonacci_array << 1
#   else
#     next_fib_number = fibonacci_array[i-2] + fibonacci_array[i-1]
#     fibonacci_array << next_fib_number
#   end
# end
#
# p fibonacci_array
#
# # until number >= fibonacci_array.length
# #   fibonacci_array << x
# #   x += 1
# # end
#
# # print fibonacci_array


puts "give me a number!"
num = gets.chomp.to_i-2


fibonacci_arr = [1,1]


num.times {
  next_num = fibonacci_arr[-1]+fibonacci_arr[-2]
  fibonacci_arr << next_num
}

print fibonacci_arr
