# Write a recursive method to calculate the fibonacci number of a given number n.

def fibo(num)
  if num == 1 || num == 2
    1
  else
    p fibo(num-1)
    p fibo(num-2)
    fibo(num-1) + fibo(num-2)
  end
end

p fibo(6)






# def fibonacci(num)
#   if num == 1 || num == 2 #(limit)
#     1
#   else
#     fibonacci(num-1) + fibonacci(num-2)
#   end
# end
#
# puts fibonacci(3)
