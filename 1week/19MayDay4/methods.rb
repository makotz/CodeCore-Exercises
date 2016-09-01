# #Methods
#
# def sum (a)
#   "Hello #{a}"
# end
#
# p sum("codecore")
#
# def power_it(a,b)
#   a ** b
# end
#
# def whatisit (a)
#   if a.is_a?(Integer) || a.is_a?(Array) || a.is_a?(String)
#     # if a.is_a?(Integer)
#     #     a.class.superclass
#     # else
#     #     a.class
#     #   end
#   else
#     "something else"
#   end
# end
#
# p whatisit (true)

#
# def by_five? (num)
#   num % 5 == 0 #Figures out whether this is true or false
# end
#
#
# p by_five? (1)

# def largest(*a)
#   a.max
# end
#
# p largest(2,4,5,6)


############################
#Block

# def my_method(*number)
#   puts "Hello"
#   yield
#   puts "Bye"
# end
# x = [1234, 4324323, 342305, 23]
#
# my_method do
#   x
# end

#####################################################
#Lambda and Procs

#A piece of code that can be called back later

my_first_lambda = lambda {puts "hello everyone"}
myPfirst_lambda.call

my_second_lambda do
  puts "I'm a lambda"
  return
end

my_first_procs = procs {puts "hello everyone"}
myPfirst_procs.call
