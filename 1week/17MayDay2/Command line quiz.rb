#Write a piece of code that asks a user for a number and then prints the numbers from that number to 100 if the number is less than 100 (incrementing) if the number is greater than a hundred it will print the numbers from that number to a 100 (decrementing).

# puts "Give me a number!"
# number = gets.chomp.to_i
#
# while number < 100
#   puts number
#   number += 1
# end
# while number > 100
#   puts number
#   number -= 1
# end


# Command line quiz
#Build a command line quiz where it prompts the user with a three questions like:
# How many sides does a hexagon have?
# 1- five
# 2- six
# 3- seven
# Enter the correct number:
# The user can then enter the correct number of the question.
# At the end it will display:
# You scored 66%, you got 2 out of 3 questions correctly.

totalcorrect = 0

puts "How many sides does a hexagon have?
1 - five
2 - six
3 - seven"
hexagonanswer = gets.chomp.to_i
totalcorrect += 1 if hexagonanswer == 2

puts "How many sides does a octagon have?
1 - eight
2 - six
3 - seven"
octagonanswer = gets.chomp.to_i
totalcorrect += 1 if octagonanswer == 1

puts "How many sides does a heptagon have?
1 - six
2 - nine
3 - seven"
heptagonanswer = gets.chomp.to_i
totalcorrect += 1 if heptagonanswer == 2

percentage = (totalcorrect / 3.0) * 100

puts "You scored #{percentage}%, you got #{totalcorrect} out of 3 questions correctly."
