# Ask the user for the following information: first name, last name and age
#
# Then ask them for cities they've visited (they can keep entering until they type "done").
#
# # Store all the entered data in a hash and then loop through the hash and display results
#

def profile
  info = Hash.new()
puts "Can I have your first name?"
info["first name"] = gets.chomp.capitalize

puts "Can I have your last name?"
info["last name"] = gets.chomp.capitalize

puts "Can I have your age?"
info["age"] = gets.chomp.to_i

puts "What cities have you visited before?"
city = gets.chomp
city_array = []
until city == "done"
  city_array << city.capitalize
  puts "And whereelse have you gone to?"
  city = gets.chomp
end
info["cities"] = city_array

#Sorting it out
info.each do |key, value|
  if value.is_a?(Array)
    print "You have visited #{key.downcase} like "
    value.each do |e|
        if value.index(e) == value.length-1
          print "and #{e}."
        else
          print "#{e}, "
        end
      end
  else
  puts "Your #{key} is #{value}"
  end
end
end


profile
