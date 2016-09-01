# Ask the user for personal information: first name, last name, city of birth and age. Then store that information in a hash. After that loop through the hash and display the results, for example:
#
# Your first name is Tam.
#
# Capitalize the inputs from the user if they are capitalizable

def profile
  array = []
  puts "Your first name, por favor"
  first_name = gets.chomp.capitalize
  puts "Your last name, por favor"
  last_name = gets.chomp.capitalize
  puts "Your city of birth, por favor"
  city = gets.chomp.capitalize
  puts "Your age, por favor"
  age = gets.chomp.to_i

  personal_info = {}

  personal_info["first name"] = first_name
  personal_info["last name"] = last_name
  personal_info["city of birth"] = city
  personal_info["age"] = age

  personal_info.each do |key, value|
    puts "Your #{key} is #{value}."
  end
end

profile
