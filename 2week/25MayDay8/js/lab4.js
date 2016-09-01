// Write a function called fizzBuzz that takes two numbers, then iterates through the numbers 1 - 100. The function will print "fizz" if the current number is divisible by the first number, "buzz" if the current number is divisible by the second number, "fizzbuzz" if its divisible by both, else print the current number.
// // document.addEventListener("DOMContentLoaded", function(){
//   var content = document.getElementById("content");
//   var x = prompt("Your first number?")
//   var y = prompt("Your second number?")
//   for (i = 1; i <= 100; i++) {
//     if (i % x == 0 && i % 5 == 0){
//       content.innerHTML += "fizzbuzz<br>"
//      }
//      else if (i % x == 0) {
//        content.innerHTML += "fizz<br>"
//      }
//      else if (i % y == 0) {
//        content.innerHTML += "buzz<br>"
//      }
//       else {content.innerHTML += i+ "<br>"}
//    }
//  });





document.addEventListener("click", function(){
  var content = document.getElementById("content");
  var first = prompt("Whats the first number?");
  var second = prompt("Whats the second number?");
  for (var i = 1; i < 100; i++) {
    if (i % (first*second) == 0) {
      content.innerHTML += "Fizzbuzz<br>";
    } else if (i % (first) == 0) {
      content.innerHTML += "Fizz<br>"
    } else if (i % (second) == 0) {
      content.innerHTML += "buzz<br>"
    } else {content.innerHTML += i+"<br>"}
  }
});
