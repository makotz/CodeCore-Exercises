# Build a command line quiz where it prompts the user with a three questions like:
# How many sides does a hexagon have?
# 1- five
# 2- six
# 3- seven
# Enter the correct number:
# The user can then enter the correct number of the question.
# At the end it will display:
# You scored 66%, you got 2 out of 3 questions correctly.

totalcorrect = 0
questioncount = 0

puts "How many sides does a hexagon have?"
answer1 = gets.chomp
questioncount += 1

if answer1 == "6"
  totalcorrect += 1
end

puts "How many sides does a octagon have?"
answer2 = gets.chomp
questioncount += 1

if answer2 == "8"
  totalcorrect += 1
end

puts "How many sides does a pentagon have?"
answer3 = gets.chomp
questioncount += 1

if answer3 == "5"
  totalcorrect += 1
end

percentage = (totalcorrect/questioncount) * 100

puts "You got #{totalcorrect} questions correct. That's #{percentage}%"
