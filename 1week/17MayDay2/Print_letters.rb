# Write a code that prints letters in increasing number as follows:
# a
# b b
# c c c
# d d d d
# e e e e e
# ...etc
#
# number = 1
#
# for x in ("a".."z") do
#   number.times {print x}
#   puts " "
#   number += 1
# end


counter = 1

("a".."z").each do |x|
  counter.times {print x}
  puts " "
  counter += 1
end
