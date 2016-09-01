// Exercise 1

// function zero(number) {
//   return 0;
// }
//
// console.log(zero(10));
// console.log(zero(220));
// console.log(zero(440));


// Exercise 2

// var nameAge = function (object) {
//     console.log(object.name + "is" + object.age + "years old.");
// }
//
// var nameAge()


// Exercise 3

// var sentenceLength = function (sentence) {
//   var nameArray = sentence.replace(',',"").split(" ");
//   for (var i = 0; i < nameArray.length; i++) {
//     myObject[nameArray[i]] = nameArray[i].length
//   }
//   return myObject;
// }
//
// console.log(sentenceLength)

// Javascript language demo

// var a = "Hello CodeCore";
//
// console.log(typeof a);
//
// if (0) {console.log("Hello"); }
//
// // You cannot start a variable with a number
//
// if (undefined) {console.log("hey there!"); }

var vroom = function() {
  console.log("Vroooommmmmmm.... I am driving at " + this.maxSpeed + "km/h")
}

var screetch = function() {
  if  
    if (this.speed === "fast") {
      console.log("Screeetchhh");
    } else if (this.speed === "medium") {
      console.log("RRrch");
    } else if (this.speed === "slow") {
      console.log("sh");
    } else {
      console.log("Yikes, I don't know how fast I am going!");
    }
}

var car = {
  make: "Honda",
  model: "Civic",
  maxSpeed: 200,
  drive: vroom,
  //  function() {
  //   console.log("Vrooom...! I am driving at" + car.maxSpeed + "km/h");
  //   console.log("Vrooom...! I am driving at" + this.maxSpeed + "km/h");
  // }
  stop: screetch,
  speed: "fast",
}

car.drive();
car.stop();
