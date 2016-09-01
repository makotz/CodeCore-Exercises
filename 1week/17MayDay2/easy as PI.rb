#easy as PI

puts "Give me an angle (in degrees)!"
b = gets.chomp.to_i

c = (b) / (Math::PI)/(180)

puts "#{b} degrees is #{c} radian!"
