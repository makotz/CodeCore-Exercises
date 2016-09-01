#May28 Done



# # Write a code that prints numbers from 1 to 50 in two ways:
# # 1- Using a loop
# # 2- Using recursion
# #
# # Benchmark your two solutions.
# number = 1
#
# # loop
#
# require 'benchmark'
#
# def loopes(num)
#   until num == 50
#     num += 1
#   end
# end
#
# # puts loop(number)
#
# puts Benchmark.measure {loopes(number)}
#
# # # recursion
# #
# def recursion(num)
#   if num == 50
#     num
#   else
#     num
#     recursion(num+1)
#   end
# end
#
#
# puts Benchmark.measure {recursion(number)}
#

# def recurision(num)
# puts num == 50 ? num :  num + recurision(num+1)
# end
# puts recurision(number)

##################################################
# May28

# x = 1
#
# while x <= 50
#   puts x
#   x += 1
# end

def rec(num)
  if num == 50
    puts num
  else
    puts num
    rec(num+1)
  end
end

rec(1)
