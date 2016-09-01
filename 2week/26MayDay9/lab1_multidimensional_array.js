// Write a function called printMulti that takes an array of arrays,prints every element to the console.

var my_array = [[2,3,4], ["Hello CodeCore", 1, true]];


// function printMulti(myArray) {
//     for (var i = 0, len = myArray.length ; i < len; i++) {
//       if (Array.isArray(myArray[i])) {
//         printMulti(myArray[i])
//       }
//       else {
//         console.log(myArray[i])
//        }
//     }
// }
// printMulti(my_array)

function printall(array) {
  for (var i = 0; i < array.length; i++) {
  if (Array.isArray(array[i])) {
    printall(array[i]);
  } else {console.log(array[i]);}
  }
}

printall(my_array)
