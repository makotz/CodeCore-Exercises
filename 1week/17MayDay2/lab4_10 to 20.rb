# Print 10 to 20 using a for loop in two ways:
# 1- using range with three dots
# 2- using range with two dots

# x = 10
#
# for x in (10..20)
#   print x
#   x += 1
#   end
#
# for x in (10...21)
#     print x
#     x+= 1
# end


x = 50

50.downto(15).each do |y|
  puts y
end

"B".upto("O").each do |y|
  puts y
end
