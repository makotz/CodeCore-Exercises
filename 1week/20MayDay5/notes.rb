#METHODS

# def display_info(name)
#   puts "The user name is #{name}"
# end
#
# display_info("Tam") # => The user name is Tam
# display_info "John" # => The user name is John

#METHODS w/ 2 arguments and the 2nd one as hash
# def display_info(name, extra_info = {})
#   puts "The user name is #{name} and the city is #{extra_info[:city]}"
# end
#
# display_info("Tam") # => The user name is Tam
# display_info "John" # => The user name is John
# display_info("Tam", {city:"Burnaby"})
# #or display like
# display_info "Tam", city: "Burnaby"


#Hash should be the last argument

###################################################
#Classes and Objects

#One class(cookie cutter, blueprint) and many objects(dough, house)
class Cookie

end

#If capitalized, its a constant and its advised not to change.
#Class should not change or CamelCase
#Good practice to have one class per file and the fileannsame should be snake_case of the class so in this case, cookie.rb
