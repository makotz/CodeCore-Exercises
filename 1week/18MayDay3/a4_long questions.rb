# Given an array of questions like this:
# questions = ["What is your name", "How are you?", "Is that right?", "Are you John?", "How is everything?"]
# Generate an array of questions whose total character count is greater than 15.
#
# Bonus: Do it in two ways, one of them using select method for Ruby Arrays.

questions = ["What is your name", "How are you?", "Is that right?", "Are you John?", "How is everything?"]
long_questions = []

#METHOD 1

questions.map! do |x|
  y = x.split().join(' ')
  if y.length > 15
    y
    long_questions << y
  end
end

p long_questions

########################################

#METHOD 2 w/.select

questions.select { |a|
  if a.split().join(' ').length > 15
    long_questions << a end }

p long_questions
