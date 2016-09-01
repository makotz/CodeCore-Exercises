// // document.addEventListener("DOMContentLoaded", function() {
//
//   // document.getElementById("welcome").innerHTML = "How's it going?";
//
//   // var numbers = [1231, 123, 21343, 3243, 32, 23, 34, 32];
//   // var jordan = _.pluck(numbers, 23);
//   // console.log(jordan);
//
//   // var stooges = [{name: 'moe', age: 40}, {name: 'larry', age: 50}, {name: 'curly', age: 60}];
//   // console.log(_.pluck(stooges, 'age'));
//
//   // var welcome = document.getElementById("welcome");
//
//   // var ageCheck = function(age) {
//   //   if (age > 50) {
//   //     welcome.innerHTML = "Old";
//   //     // document.write("Old");
//   //   } else {
//   //     welcome.innerHTML = "Young";
//   //   }
//   // };
//
//   // ageCheck(5);
//   //
//   // var map = function(arr, fn) {
//   //   for (var i=0; i<arr.length; i++)
//   //   {
//   //     arr[i] = fn(arr[i]);
//   //   }
//   //
//   //   welcome.innerHTML = arr;
//   // };
//
//   // var square = function(num) {
//   //   return num * num;
//   // };
//   //
//   // map([1,2,3], square);
//
//   // var sayLater = function(str) {
//   //   setTimeout(function() {
//   //     welcome.innerHTML = str;
//   //   }, 5000);
//   // };
//
//   // sayLater("Riders of the storm...");
//
//   // var propertyCounter = function(obj) {
//   //   var count = 0
//   //   for (var prop in obj) {
//   //     count++;
//   //   }
//   //
//   //   return count;
//   // };
//
//   // welcome.innerHTML()
//
//   //assignment 1: personable persons
//   var people = [{name: "Makoto", age: 21}, {name: "Ryan", age: 24}];
//
//   console.log(people[1].age)
//
//   var greet = function(peep) {
//       if (peep[0].age > peep[1].age) {
//         return "Hello, "+peep[0].name+". I am "+peep[1].name+". Please to meet you."
//       } else {
//         return "Yo "+peep[1].name+". I'm totally "+peep[0].name+". Wsup!"
//       }
//   }
//
// console.log(greet(people));
//
// // });
//
// //assignment 2: Possibly Positive
//
// var isPositive = function(thing) {
//   if (typeof thing === 'number') {
//     if (thing >= 0) {
//       return true
//     } else {
//       return false
//     }
//   } else {
//     return false
//   }
// }
//
// console.log(isPositive(-2));
//
// var filter = function(a, fn) {
//   for (var i=0; i < a.length; i++) {
//     a[i] = fn(a[i])
//   }
//   return a
// }
//
// var array = [1,2,4,5,-6,'car']
// var plusTwo = function(x) {
//   return x + 2
// }
//
// console.log(filter(array, isPositive))

// assignment 4: decaying count

// var second = 1000

// console.log(setInterval(function() {
//   if (count < 11) {
//   console.log(count);
//   count++;
// }}, second));

// var loop = function() {
//   var count = 1
// var increment = 1
//
// setTimeout(function() {
//   console.log(increment);
// }, 0)
//
// increment++
// setTimeout(function() {
//   console.log(increment);
// }, increment*1000)


var counter = 1
var sec = 1000

var print = function() {
  if (counter < 11) {
    console.log(counter)
    counter ++
    setTimeout(print, counter * sec);
  }
}

print();
