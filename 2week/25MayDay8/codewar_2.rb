def unique_in_order(iterable)
new_array = []
b = iterable.split("")
  (0...b.length).each do |x|
    if b[x] == b[x-1]
    else
      new_array << b[x]
    end
  end
p new_array
end

unique_in_order('AAAABBBCCDAABBB')
