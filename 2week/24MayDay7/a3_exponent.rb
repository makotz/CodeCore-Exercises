#May 29th DONE


# Write a method that takes in a base number n and exponent e. It must return n to the power of e. Don't use the ** operator.
#
# Stretch: Support 0 or negative number values of e.

def exponent(n, e)
  if e == 1
    n
  else
    n * exponent(n, e-1)
  end
end





def exponent(n,e)
  if e == 1
    n
  else
  n * exponent(n, e-1)
  end
end


puts exponent(4,3)
