# Write a recursive function that will take a number between 1 and a hundred and returns an array of a possible set of coins that will add up to the number. User coins: 25, 10, 5 and 1 cent.
#
def coins(num)
  if num*100 >= 25
      print "$#{num} can be divided into #{(num * 100 / 25).floor} quarters, "
      coins((num * 100 % 25)/100)
  elsif num*100 >= 10
      print "#{(num * 100 / 10).floor} dimes, "
      coins((num * 100 % 10)/100)
  else
      print "#{(num * 100 / 5).floor} nickels, and "
      print "#{(num * 100 % 5).floor} pennies."
      puts ""
  end
end

coins(6.35)
