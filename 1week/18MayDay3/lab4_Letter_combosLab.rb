# Given a string such as "abcd". Generate an array that gives every 2-letter combination that are adjacent so your code will generate:
# ?
# ["ab", "bc", "cd"]


string = "abcdefghijk"

string_array = string.chars
result_array = []

string_array.length.times do |i|
  next if string_array[i+1] == nil
  result_array << string_array[i..(i+1)].join
end

p result_array

# MAKOTO
p string.scan(/../)

splitstring = string.split('')
indexlimit = splitstring.length-1
new_array = []

#If its the first or the last element, it only pu
splitstring.each do |x|
if splitstring.index(x) == 0 || splitstring.index(x) == indexlimit
    new_array << x
  else
    new_array << x+x
  end
end

new_new_array = new_array.join('')

p new_new_array.scan(/../)
