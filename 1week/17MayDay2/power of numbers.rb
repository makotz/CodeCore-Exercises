print "Give me a number!"
a = gets.chomp.to_i

if a % 3 == 0
    print a**3
elsif a % 2 == 0
    print a**2
else
    print a
end
