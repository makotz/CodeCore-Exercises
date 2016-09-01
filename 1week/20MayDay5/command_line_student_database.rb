# Build a simple student database program in the command line that does the following:
# 1. When you first start the program it will give you the option to enter commands:
#     l: display all students in the database with id beside them
#     n: enter new student data
#     s: it will prompt you to display more details about a student by entering its id from the listing in the previous command.
#    d: it will prompt you to delete a student by its id
# 2. When you want to enter a new student (n command) it will prompt you for the following: name, email, courses (separated by commas). After that it will prompt you to enter the grade on every course entered for that student.
# 3. At any point you can type `exit` to stop the program.
# 4. After finishing any command it will go back to step 1, listing all possible commands.
#
# Make sure to use Ruby classes to structure your code.

load "students.rb"

puts "Either put, l' to display all students in the database, 'n' to enter new student data, 's' to display more details about a student, or 'd' to delete a student"
answer = gets.chomp.to_s

p answer
unless "exit"
  case answer
  when 'l'
    display
  when 'n'
    puts add
  when 's'
    display
  when 'd'
    display
  end
end

def add
  puts "Name to add:"
  new_name = gets.chomp
  puts "His/her email: "
  new_email = gets.chomp
  puts "courses please! (separated by comma)"
  new_courses = gets.chomp
end
