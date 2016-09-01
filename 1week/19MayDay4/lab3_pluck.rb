# Implement pluck, which takes an array of objects and a property name, and returns an array containing the named property of each object.
#
# For example:
# 1
# pluck([{a:1}, {a:2}], 'a') // -> [1,2]
#
# If an object is missing the property, you should just leave it as undefined in the output array.


# def pluckbeta(array, property)
#   new_array = []
#   property1 = [property.to_sym]
#   array.each do |element|
#     element.each do |subel|
#       p subel
#       p property1
#       p elem
#     if property1 == element.keys
#     new_array << element[property.to_sym]
#   else
#     new_array << nil
#     end
#   end
#   end
#   p new_array
# end







#########################################

def pluck(array, key)
  array.map do |h|
    h[key] #No need to iterate over the array
  end
end

p pluck([{a:1}, {a:2, b:4}, {b:2}], 'a')
