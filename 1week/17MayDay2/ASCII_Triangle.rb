# Write a method that takes a number N and then draw a triangle that has N number of letter O on each of its sides. For example given the number 5 your will get something like:
# ?
# 1
# 2
# 3
# 4
# 5
#     O
#    O O
#   O O O
#  O O O O
# O O O O O

# puts "Give me a number"
# n = gets.chomp.to_i
#
# def triangle(rows)
#   space = rows
#   num_of_Os = 1
#   while num_of_Os <= rows
#   space.times {print " "}
#   num_of_Os.times {print "o"+ " "}
#   puts " "
#   num_of_Os +=1
#   space -=1
#   end
# end
#
# triangle(n)

puts "give me a number!"
number = gets.chomp.to_i

def triangle(num)
  numofOs = 1
  until num == 0
  num.times {print " "}
  numofOs.times {print "o "}
  puts ""
  num -= 1
  numofOs += 1
  end
end

triangle(number)
