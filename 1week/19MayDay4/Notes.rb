# # Welcome to day 4, Cohort 13 :)
# me = ["Jacob Tran", "12341234.23", "88 E. Pender St"]
# me[0] # returns to us "Jacob Tran"
#
# # old format for hashes
# me = {  "name" => "Jacob Tran",
#         "balance" => 134324.34 }
#
# me["name"] # returns to us "Jacob Tran"
#
# p me.fetch("name")
# p me.fetch("balance", 0)
#
# me = {}
# me["name"] = "Jacob Tran"
# me["balance"] = 0
# me["address"] = "88 E. Pender St"
# me.default = "no data"
# p me["postal code"]

# PERSONAL INFORMATION HASH
# my_info = Hash.new('default value')
# my_info = {
#   "first_name" => "Jacob",
#   "last_name" => "Tran",
#   "city" => "Vancouver",
#   "favourite food" => "Sushi",
#   "favourite sport" => "MMA"
# }
#
# p my_info.values
# ["first_name", "last_name", "city", "favourite_food", "favourite_sport"]

# car hash
cars = {"Honda"=>"Odyssey", "Toyota"=>"Sienna", "Hyundai"=>"Tiburon"}
# p cars.keys
# p cars.values
# p cars["Honda"] #Odyssey
# p cars.key("Sienna") # returns our key based on value
# p cars.key?("Honda") # true - does the key exist?
# p cars.key?("Tesla") # false

# p cars.values_at("Honda", "Toyota", "Ford")

# cars.each do |tuple|
#   p tuple
# end
#
# cars.each do |key, value|
#   p key
# end
#
# cars.each do |key, value|
#   p value
# end
#
# cars.each do |key, value|
#   p "The brand #{key} manufactures a(n) #{value}"
# end

# PROVINCES
# canada =  {
#             "BC" => "Victoria",
#             "Alberta" => "Edmonton",
#             "Saskatchewan" => "Regina"
#           }
#
# canada.each do |province, capital|
#   puts "#{capital}, #{province}"
# end
#
# canada.each_pair do |province_and_capital|
#   puts "#{province_and_capital.last}, #{province_capital.first}"
# end
#
# canada.each_key { |key| puts key }
# canada.each_value { |value| puts value }

# city exercise
# city_ratings = {"Vancouver" => 10, "Richmond" => 8, "Burnaby" => 7}
# city_ratings.each_key { |city| puts city }
# city_ratings.each_value { |rating| puts rating }

# Game of Thrones
# person = {
#   "first_name" => "rob"
#   "age" => 24
# }
#
# families =  {
#               "Stark"     => [person, "John", "Sansa"],
#               "Greyjoy"   => ["Theron", "Sister", "Dad"],
#               "Tyrell"    => ["Margery", "Gramma", "Brother"],
#               "Lanister"  => ["Tyrion", "Cersi", "Jamie"]
#             }
#
# people =  [
#             {
#               "first_name" => "Jacob",
#               "last_name" => "Tran",
#               "age" => 37
#             },
#             {
#               "first_name" => "Tam",
#               "last_name" => "Kbeili",
#               "age" => 28
#             }
#           ]

# HASH && ARRAYS

# my_hash = {
#             "BC" => ["Vancouver", "Richmond"],
#             "AB" => ["Edmonton", "Calgary"]
#           }
#
# my_hash.each do |province, cities|
#   # puts "#{province}: #{cities.join(", ")}"
# end

# cities_string = "";
# my_hash.each_value { |city| p city }
# # puts "#{province}: #{cities_string}"
# p cities_string


# mapping
# puts my_hash.map{|province, my_hash| "#{province}: #{my_hash.join(", ")}"}

provinces = {
              "BC" => ["Vancouver", "Richmond", "West Vancouver"],
              "AB" => ["Calgary", "Edmonton", "Red Deer"],
              "WA" => ["Seattle", "Bellingham", "Blaine"]
            }

people =  [
            {
              "first_name" => "Jacob",
              "last_name" => "Tran",
              "age" => 37
            },
            {
              "first_name" => "Tam",
              "last_name" => "Kbielli",
              "age" => 28
            }
          ]

# SYMBOLS

my_hash = {:a => 1, :b => 2, :c => 3}
my_hash = {a: 1, b: 2, c: 3}

course_info = {
  name:     "CodeCore Bootcamp",
  length:   "12 weeks"
}

course_info = {
  "name" => "CodeCore Bootcamp",
  "length" => "12 weeks"
}

# convert string to symbol
# to_sym
# intern

# s = "sony"
# p s.class
# sym = s.to_sym
# p sym.class

# s = "sony"
# p s.class
# sym = s.intern
# p sym.class

# NO PERFORMANCE DIFFERENCE
me = {:first_name => "Jacob", :last_name => "Tran"}
me = {first_name: "Jacob", last_name: "Tran"}
