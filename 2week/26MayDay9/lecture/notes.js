// //Arrays
//
// var myArray = ["Hello", 1,2,3, null, true]
// // null = empty object
// // undefined = nothing there
//
// myArray[0]
//
// myArray.push(5)
//
// myArray.length
//
// myArray.pop()
// //underscore.js: a method repository
// myArray.shift()
// //pop for the first element
// myArray.unshift()
// //.push for the first element
// myArray.slice(element, element2)
// //gives the array in between element and element2

// // Excercise 1
//
// var first = ["hello",5,"a"];
//
// first[1] = 6;
//
// var second = [];
//
// for (var i = 0; i <= 100; i++) {
//   second.push(i)
// };
//
// console.log(first);
// console.log(second.length);


// Without "var" the variable would become a global variable

//Excerise 2
// var array = [0,5,6,-12];
// var sum = 0;
//
// for (var i = 0; i < array.length; i++) {
//   sum += array[i]
// }
//
// console.log(sum)
//
// var wordArray = ['apple', 'dog','computer','cup']
//
// for (var i = 0; i < wordArray.length; i++) {
//   console.log(wordArray[i] + " has " + wordArray[i].length + " characters.")
// }
//
// .split()
// //splits the string into an array
//
// .join()
// //joins the array into a string


var string = "hello"

console.log(string.split(''))

// var sentence = prompt("Give me a sentence!")
//
// var wordsInSentence = sentence.split().length
// alert("You have "+wordsInSentence+" words in that sentence");

var numbers_array = [];

for (var i = 0; i <100; i++) {
  numbers_array.push(i);
}

console.log(numbers_array.join(''));
