#May28 Done



# Write a method `factorial` that takes one argument and returns the factorial value of that number. In math, factorial for a number n is the product of the numbers from 1 to the number n. For instance, factorial for 5 will be: 5 * 4 * 3 * 2 * 1.
#
# def factorial(num)
# fac = num
#   while number > 1
#     number -= 1
#     factor *= (number)
#   end
# return factor
# end
#
# p factorial(12)

# def fac(num)
#   if n > 1
#     return num *= fac(num-1)
#   else
#     return 1
#   end
# end

####################################
# May 28

def factorial(x)
  counter = x-1
  while counter > 0
    x *= counter
    counter -= 1
  end
  puts x
end


factorial(12)
