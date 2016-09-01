# #Data-structure: Types include arrays, hashes,
# #Computing vs Coding:
#
# #Recursion: A method that calls itself (a loop basically). must have a minimum.
# # Algorithm is not a day to day task
# #
# # Stack vs.Queue (datastructure)
# # Stack: Last element inserted is the first element to take out
# # Queue: First in First out
#
# # #Recursion example
# # def sum(array)
# #   if array.size == 0
# #     0
# #   else
# #     array[0] + sum(array[1..-1])#the 'sum' method calls recursion from the [1] to [-1]
# #   end
# # end
# #
# # puts sum([5,4,3,2,1])
#
#
# Recursion exercise (factorial)
def factorial(number)
  if number == 0 #(limit)
    1
  else
    number * factorial(number-1) #first number * number - 1 but the factorial calls the same method on the number - 1
  end
end

puts factorial(8)
#
# #Recusrion
# # def reverse(string)
# #   if string.length == 0
# #     ""
# #   else
# #     string[-1] + reverse(string[0..-2])
# #   end
# # end
# #
# # puts reverse("hello world")
#
# #array: multiply the elements in the array and the ones within the array inside array
#
# def array_multiply(array)
#   unless array.length == 0
#     if array[0].is_a?(Integer)
#     p array[0] ** 2
#     array_multiply(array[1..-1])
#     else array[0].is_a?(Array)
#     array_multiply(array[0])
#     array_multiply(array[1..-1])
#     end
#   end
# end
#
#
#
#
# array = [4,5,[6,7],[3,[1,2,3]]]
#
#
# array_multiply(array)
#
# #benchmark
#
# #Recursive solutions can be better because it avoids manipulating the variable
#
# #Big O Notation
# O(1) as num of elements increase, number of operations stays the same.
# O(n) as num of elements increase, the number of operations increases at a linear rate.
# O(log(n)) The rate of num of element increase is smaller than the rate of opearations increase
# O(n!) No known algorithm to solve (travelling salesman: He/she must test every possible solution to travel the shortest amount)
#
#
# #Arrays vs Linked Lists
# Access
#   -Arrays O(1) b/c you can locate it by the order
#   -Linked List O(n) b/c you need to follow the pointers
#
# Add/Remove
#   -Array O(n) b/c you have to shift the whole array
#   -Linked List O(1) b/c you can simply add a pointer to the last element
#
# Linear vs Binary Search
#   -Linear O(n) - Search through each term
#   -Binary O(log(n)) - Find the middle, is it < or >, repeat. The rate of num of element increase is smaller than the rate of opearations increase
