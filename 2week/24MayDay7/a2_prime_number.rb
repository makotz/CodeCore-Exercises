# Write a method that takes a number n and returns whether n is prime or not. A prime number is divisible by only 1 and itself.


#
# def prime(num)
#   divider = num - 1
#   num += num +
#   return if divider == 1
#   return "#{num} is divisible by #{divider}." if num % divider == 0
#   prime(num - 1)
# end
#
#
#
# puts prime(5)

def prime(input, divider = input-1)
 p input
 p divider
 if input == 1 || divider == 1
   "This number is prime"
 elsif input % divider == 0

   "This number is not prime"
 elsif input % divider != 0
     prime(input, divider-=1)
 end

end


function isisPrime(n) {
  divider = n-1
  isPrime(n, divider)
function isPrime(n, divider) {
    console.log(divider)
    if (n % divider != 0) {
      console.log("False!")
    } else if (divider == 1) {
      console.log("True!")
    } else {
      divider -= 1
      isPrime(n, divider);
    }
}


p primetime(101)
