# print "give me a number please!"
# a = gets.chomp.to_i
#
# puts a+ a
# puts a * 5

# Take a string and find a way to display each character on a new line with its case swapped so if I give: Hello I will get:
#
# h
# E
# L
# L
# O

# print "Give me a string!"
# string = gets.chomp.swapcase!
# string.split.each do |x|
#   puts REXML::Document.new(File.read("path/to/file"))


puts "Give me a string!"
answer = gets.chomp.swapcase!
answer.split("").each do |element|
  puts element
end
