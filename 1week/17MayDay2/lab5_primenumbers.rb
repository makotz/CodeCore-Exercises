puts "Give me a number!"
answer = gets.chomp.to_i
counter = answer

  (answer-1..2).each do |y| 
    if x % y == 0
      print "not a prime number"
    end
end
