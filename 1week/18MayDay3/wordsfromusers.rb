# Keep asking user for input and add their input to an array until they type "exit".
#
# After that print out the number of input they've entered and the words. For example print:
#
# You've entered 5 words:
# 1. Hi
# 2. Hello
# 3. Hey
# 4. What's up?
# 5. Bye

puts "Give me an input"
input = gets.chomp

#create an array
quotes = []
quotes << input
#add to array until "exit" is commanded
while input != "exit"
  puts "another input por favor?"
  input = gets.chomp
  if input != "exit"
    quotes << input
  else
    puts "You've entered #{quotes.length} quotes:"
    for y in (0...quotes.length)
      puts "#{y+1}. #{quotes[y]}"
    end
  end
end
