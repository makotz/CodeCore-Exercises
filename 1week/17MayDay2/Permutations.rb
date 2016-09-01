# Ask the user for for three inputs and then print out all the possible permutations for the user inputs. For instance if the users inputs `a`, `b` and `c` you should print out:
# a a a
# a a b
# a a c
# a b a
# a b b
# ....etc
# Complete the exercise without making use of arrays.
# puts "Give me input!"
# a = gets.chomp
# puts "Give me another input!"
# b = gets.chomp
# puts "Give me ANOTER input!"
# c = gets.chomp
#
# thing = a + b + c
#
# for x in (0...thing.size)
#   for y in (0...thing.size)
#     for z in (0...thing.size)
#       puts thing[x] + thing[y] + thing[z]
#     end
#   end
# end



def permutations
  puts "Input please?"
  answer1 = gets.chomp

  puts "Another one!"
  answer2 = gets.chomp

  puts "Another one!"
  answer3 = gets.chomp

  total = answer1 + answer2 + answer3
    (0...total.length).each do |x|
      (0...total.length).each do |y|
        (0...total.length).each do |z|
          print total[x]+total[y]+total[z]
          puts ""
        end
      end
    end
end

permutations
