# welcome back cohort 13!
# shopping_list = [25, "cola", ["Jacob Tran", 123938402834, 492.23], nil]

# shopping_list = ["beans", "cola", "eggs", "butter", "milk"]
# puts shopping_list[0]
#
# shopping_list = Array.new
# shopping_list = []
#
# shopping_list = Array.new("beans", "cola", "eggs", "butter", "milk")

# MULTI DIMENSIONAL Array

# legend
#   nil = empty
#   0 = X
#   1 = O
# row1 = [nil, nil, nil]
# row2 = [nil, nil, nil]
# row3 = [nil, nil, nil]
#
# tic_tac_toe = [ row1,
#                 row2,
#                 row3 ]
#
# row2[1] = 1
# tic_tac_toe[1][1] = 1
#
# puts tic_tac_toe


# PUSHING!
# users = []
#
# users << "Jacob Tran"
# users.push "Tam Kbeili"
# users.push("Tim").push("Bob").push("Sarah")
#
# puts users
#
# search = "Bob"

# puts users.include?(search)
# puts users.include? search
#
# puts "length: #{users.length}" # triggers a sql query
# puts "size: #{users.size}"
# puts "count: #{users.count}" # rails friendly

# tictactoe = [
#               [0, X, 0],
#               [0, X, 0],
#               [0, O, O]
#             ]
#
# puts "length: #{tictactoe.length}"
# row = 2
# col = 1
# tictactoe[row][col]
# tictactoe.flatten!
# puts "length: #{tictactoe.length}"
# tictactoe[4]

# sentence = "Hello,\n\n\n\n    Codecore?     Students!"
# words = sentence.split( /[\?\.\!]|$/ ) # split on spaces and new line charaters
#
# p words

# FIZZBUZZ

# user input
# print "Please enter your first word: "
# first_word = gets.chomp
# print "Please enter your second word: "
# second_word = gets.chomp
#
# a = []

# each do loop
# for loop
# 1.upto(100) do |x|
#
# (1..100).each do |x|
#   if x % 3 == 0 && x % 5 == 0
#     a << first_word + second_word
#   elsif x % 3 == 0
#     a << first_word
#   elsif x % 5 == 0
#     a << second_word
#   else
#     a << x
#   end
# end
#
# puts a

# iterating through arrays

# shopping_list = ['beans', 'bread', 'ham', 'milk', 'cheese']
#
# shopping_list.each do |element|
#   puts element.upcase
# end
#
#
# tictactoe = [
#               [1, 0, 0],
#               [0, 1, 0],
#               [0, 0, 1]
#             ]
#
# tictactoe.flatten!
#
# tictactoe.each do |elm|
#   puts elm
# end
#
# tictactoe.each {|elm| puts elm}
#
#
#
# tictactoe = [
#               [1, 0, 0],
#               [0, 1, 0],
#               [0, 0, 1]
#             ]
#
# tictactoe.each do |row|
#   row.each do |col|
#     puts col
#   end
# end

# numbers = [4, 3, 23453, 345, 43]
#
# numbers.each do |n| #iterator
#   puts n * n
#   # puts n ** 2
# end
#
# p numbers

# names = Array.new
# names.push("John")
# names.push "Jacob"
# names << "Jingle"
# names[2] = "Heimer"
# names.insert(100, "Schmidt")
#
# print "names before iterator:"
# p names.compact!
#
# # new_names = []
# names.each do |name|
#   name.downcase!
# end
#
# print "names after iterator:"
# p names
#
# capitalize function realized

# print "Enter a sentence: "
# sentence = gets.chomp
# a = sentence.split
# # p a
# a.each do |elm|
#   char_array = elm.split('')
#   # p char_array
#   char_array.first.upcase!
#   # p "char_array.join: " + char_array.join
#   p "elm before: " + elm
#   elm = char_array.join
#   p "elm after: " + elm
# end
#
# p a.join(' ')

# MAPPING

# numbers = [1, 1, 2, 3, 5, 8]
#
# p numbers
#
# numbers.map! do |x|
#   x * x
# end
#
# numbers.map! { |x| x * x }
# p numbers

# names = ["matt", "ethan", "chris", "yat"]
#
# names.each do |name|
#   name.capitalize
# end
# # THE RETURN VALUE OF THE EACH DO WILL BE THE ORIGINAL ARRAY
#
#
# names.map do |name|
#   name.capitalize
# end
# # THE RETURN VALUE OF THE MAP DO WILL BE THE MODIFIED ARRAY,
# # HOWEVER, THE ORIGINAL ARRAY WILL NOT BE MUTATED... UNLESS
#
# names.map! do |name|
#   name.capitalize
# end

# print "Enter a sentence: "
# sentence = gets.chomp
# words = sentence.split
#
# words.map! do |word|
#   char_array = word.split('')
#   char_array.first.upcase!
#   word = char_array.join
# end
#
# p words.join(' ')

# print "Enter a sentence: "
# sentence = gets.chomp
# words = sentence.split
#
# words.map! do |word|
#   char_array = word.split('')
#   char_array.first.upcase!
#   word = char_array.join
# end
#
# p words.join(" ")

books = [ "of moby dick",
          "and game of thrones",
          "the davinci the code",
          "green eggs and ham" ]

books.map! do |title|
  words = title.split

  words.map! do |word|
    # p "word index: " + words.index(word).to_s
    word.capitalize!
    p word

    if words.index(word) != 0 && (word == "of" || word == "and" ||  word == "the")
      word.downcase!
      p "inside if"
      p word
    end
  end

  title = words.join(" ")
end

p books

#
