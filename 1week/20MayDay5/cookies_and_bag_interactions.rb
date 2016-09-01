require "./cookie.rb"
require "./cookie_bag.rb"

puts "The bag has #{bag.number_of_cookies} cookie(s)"

bag = CookieBag.new #initiating a cooking_bag.rb

c1 = Cookie.new(5,6) #initiating a cookie.rb
c2 = Cookie.new(6,8)
c3 = Cookie.new(5,2)
c4 = Cookie.new(524,66)
c5 = Cookie.new(55,65)
c6 = Cookie.new(56,66)

bag.add(c1) #.add is a function from the cookie_bag.rb
bag.add(c2)
bag.add(c3)
bag.add(c4)
bag.add(c5)
bag.add(c6)

puts "The bag has #{bag.number_of_cookies} cookie(s)"

taken_cookie = bag.remove #.remove is a function from the bag.
puts taken_cookie.details

taken_cookie1 = bag.remove
puts taken_cookie1.details

puts "The bag has #{bag.number_of_cookies} cookie(s)"
