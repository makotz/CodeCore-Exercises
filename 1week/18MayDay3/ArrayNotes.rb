# # # convert_string = "Hello, CodeCore Students"
# # #
# # # words = convert_string.split("o")
# # #
# # # p words
# #
# # #FIZZBUZZ
# #
# # fizzbuzz_array = []
# #
# # x = 1
# #
# # until x > 100
# #   fizzbuzz_array << x
# #   x += 1
# # end
# #
# # puts "What would you like to replace fizz with?"
# # fizz_replacement = gets.chomp
# # puts "What would you like to replace buzz with?"
# # buzz_replacement = gets.chomp
# #
# #
# # for y in fizzbuzz_array[1...fizzbuzz_array.length]
# #   if y % 3 == 0 && y % 5 == 0
# #     puts fizz_replacement+buzz_replacement
# #   elsif y % 3 == 0
# #     puts fizz_replacement
# #   elsif y % 5 == 0
# #     puts buzz_replacement
# #   else
# #     puts y
# #   end
# # end
#
# # A_array
# # a_array = [1,2,3,4,5]
# #
# #
# # a_array.each do |element|
# #   puts element ** 2
# # end
#
# # Capitalize Name
# # b_array = ["makoto","rachel","lilah","madz","ian"]
# #
# # capitalize_array = []
# #
# # b_array.each do |name|
# #   puts name.capitalize
# #   capitalize_array << name.capitalize
# # end
# #
# # p capitalize_array
# # p b_array
#
# #Slide 23
#
# string_A = "I am a rainbow"
#
# string_B = string_A.split(" ")
#
# string_B.each do |x|
#   x.capitalize!
# end
#
# print string_B

# puts "Give me a sentence!"
# sentence = gets.chomp.split
#
# sentence.map! do |word|
#   word.capitalize
# end
#
# p sentence.join(" ")

book_array = ["the lord of the rings", "the catcher in the rye"]


book_array.map! do |title|
  words = title.split
  p words
    for num in words[0..words.length]
      if words[num].eql?("the") || words[num].eql?("of") || words[num].eql?("in")
        puts words[num]
      else
        a[num].capitalize!
      end

  end

end

puts book_array
