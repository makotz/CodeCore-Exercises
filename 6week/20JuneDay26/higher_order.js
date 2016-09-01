// //Higher order function takes in a function as a prarameter or returns a function
//
// var myFunction = function(anotherFunction) {
//   console.log(anotherFunction(10))
// };
//
// var addFive = function(number) {
//   return number + 5;
// }
//
// myFunction(addFive);
//
//
// var multiplyByTen = function(number) {
//   return number * 10;
// }
//
// myFunction(multiplyByTen);
//
// //returning a function
// var myFunction2 = function() {
//   var myFunction3 = function(number) {
//     // return x * x
//     console.log("inside function 3");
//   }
//
//   return myFunction3;
// }
//
// var myFunction4 = myFunction2
//
// console.log(myFunction2);

// var doubleIt = function(num) {
//   return num * 2;
// }
//
// var call = function(x, operationFunction, y) {
//   return operationFunction(x);
// }
//
// console.log(call(5, doubleIt, 5))

//Anonymous function:

// var minusOne = function (x) {
//   return x - 1;
// }
//
// var plusOne = function (x) {
//   return x + 1;
// }
//
// var actions = [minusOne, plusOne]
// var numArray = [1,2,4,5,6];
//
// var map = function(array, actions) {
//   var hash = {}
//   for (var e=0; e < actions.length; e++) {
//     var newArray = []
//     for (var i=0; i < array.length; i++) {
//       newArray.push(actions[e](array[i]))
//       hash[actions[e]] = newArray
//     }
//   }
//   return hash
// }
//
// console.log(map(numArray, actions));



// var map = function(array) {
//   var newArray = []
//   for (var i=0; i<array.length; i++) {
//     newArray.push(array[i]*array[i])
//   }
//   return newArray
// // }
//
// // For EACH
// var myFunction = function(x){console.log(x);}
//
// [1,2,3,4,5].forEach(myFunction);
//
// //Map using forEach
// var map = function (arr, fn) {
//   var newArray = [];
//
//   arr.forEach(function(num) {
//     newArray.push(fn(num);
//   })
//
//   return newArray
// }


// Timeout Functions


// setTimeOut(function(){}, 1000);

// var print = function() {
//   console.log("Go");
// };
// var print1 = function() {
//   console.log("Ready");
// };
// var print2 = function() {
//   console.log("Set");
// };
//
// seconds = 0
// increment = 1000
// setTimeout(print1, seconds+1);
// setTimeout(print2, seconds);
// setTimeout(print, (seconds+= increment));

// var print = function() {
//   for (var i=0; i<100; i++) {
//     setInterval(i, 1000)
//   }
// }

// var i = 1;
// var j = 2;
//
// setInterval(function() {
//   console.log(i);
//   console.log(j);
//   i += 2;
//   j += 2;
// }, 1000)


var countdown = 10
var sup = setInterval(function() {
  if (countdown > 0) {
  console.log(countdown);
  countdown--;
}}, 1000)

setTimeout(function() {
  console.log("blastoff!");
}, sup + 1000)


system time
