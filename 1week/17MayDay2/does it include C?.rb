#Does it include "C"?

puts "Give me an input!"
a = gets.chomp.to_s
a.downcase!

if a.include? "c"
    print "Yes it has a C"
else
    print "There is no C"
end
