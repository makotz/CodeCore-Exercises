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

class Students

  def initialize(letter)
    @letter = letter
    @student_name_list = []
  end

  def self.data
  end

  def command_n(student)
  p @student_name_list
  student_name_list << student
  p @student_name_list
  end
end
