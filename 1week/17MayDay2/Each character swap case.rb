print "Please give me a word!"
a = gets.chomp.swapcase!

a.split("").each do |x|
    puts x
end
