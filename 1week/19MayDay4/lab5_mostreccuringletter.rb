# # Find the most recurring letter in a given string from the user
#
# def recurring_letter
#   puts "give me a string!"
#   string = gets.chomp.downcase.delete(' ').split('')
#
#   letter_count_hash = Hash.new(0)
#
#   string.each do |how|
#     letter_count_hash[how] += 1
#   end
#
#   p letter_count_hash
#
#   letter_count_hash.each do |letter, recurring|
#     if recurring == letter_count_hash.values.max
#       puts "The most repeated letter is '#{letter}'"
#     end
#   end
# end
# recurring_letter


#########################################
# Quiz prep(May28)

def recurring
  hash = Hash.new(0)
  puts "Give me a string"
  input = gets.chomp
  array = input.delete(' ').split('')
  p array
  array.each do |x|
    hash[x] += 1
  end
  hash.each do |k, value|
    if value == hash.values.max
      puts "The most recurring letter is #{hash.key(value)} with #{value} times>"
    end
  end
end


p recurring
