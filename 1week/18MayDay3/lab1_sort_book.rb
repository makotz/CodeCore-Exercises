# Write some code that keeps asking the user for book names until the user enters "exit". After typing "exit" the program should display all the entered book names sorted and have the book names capitalized.
puts "What's your first book?"
book_name = gets.chomp

#create an array
book_array = []
book_array << book_name

#add to array until "exit" is commanded
while book_name != "exit"
  puts "another book name please?"
  book_name = gets.chomp
  book_array << book_name
  end
end

#capitalize each word
book_array.map! do |title|
  lets = title.split
    lets.map! do |eachword|
      eachword.capitalize
    end
  lets.join(" ")
end

#sort by alphabet
book_array.sort!


puts book_array
