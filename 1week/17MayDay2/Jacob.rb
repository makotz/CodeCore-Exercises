#puts "what is your first name?"
#first_name = gets.chomp

#puts "What is your last name?"
#last_name = gets.chomp

#user feedback

#puts "Your name is #{first_name} #{last_name}"

# numbers
#a = 2
#b = a ** 3
#puts b


#puts "Give me a number!"
#a = gets.chomp.to_i
#puts "Give me another number!"
#b = gets.chomp.to_i
#c = a * b
#puts "The multiplication of #{a} times #{b} is #{c}"

puts "How old is your car?"
yearmodel = gets.chomp.to_i

if yearmodel > 20
    puts "supa old"
elsif yearmodel >= 10
  puts "small kine old"
elsif yearmodel > 0
  puts "Ho das one new ride!"
else
  puts "That's the future!"
end
