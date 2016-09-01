# Given a hash:
# {:a => "123", :b => "345", :c => "678", :d => "910"}
# Write a code that generates an array that combines the keys and values:
# so the resulting array should be:
# ["a123", "b345", "c678", "d910"]

hash = {:a => "123", :b => "345", :c => "678", :d => "910"}
# new_array = []
# hash.map do |key, value|
#   new_array << "#{key}#{value}"
# end
#
# p new_array




array = []

hash.each do |key, value|
  array << "#{key}#{value}"
end

p array
