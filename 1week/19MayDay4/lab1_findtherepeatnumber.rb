# # Find the repeated number
# #
# # You are given an array with numbers between 1 and 1,000,000. One integer is in the array twice. How can you determine which one? Can you think of a way to do it using little extra memory.
# #
# # Bonus: Solve it in two ways: one using hashes and one without.
#
array = [1,2,50,2204,503,540,2,5083]
#
def find_offender(array)
  hash = Hash.new("Not here")#Default value of not here.
  array.each do |x|
    if hash[x] == "Not here"
        hash[x] = "here!"
      else
        x
      end
    end
end

p find_offender(array)


# def find_repeat (one_array)
#   hash = Hash.new("doesn't exist")
#   one_array.each do |element|
#     if hash[element] == "doesn't exist"
#       hash[element] = "already exist"
#     else
#       return element
#     end
#   end
# end
#
#
# p find_repeat(array)
#


# def find_repeat_2(one_array)
#   new_array = []
#   one_array.each do |element|
#     new_array.each do |newel|
#     if element != newel
#       new_array << element
#       p new_array
#       p new_array [0...new_array.length]
#     else
#       p element
#     end
#   end
#   end
# end

# def find_repeat_3(one_array)
#    one_array.detect do |element|
#      return element if one_array.count(element) > 1
#    end
#  end
#
# newnew_array = []
#
#  def find_repeat_4(one_array)
#    one_array.each do |element|
#      newnew_array << element
#      until
# p find_repeat_2(array)
