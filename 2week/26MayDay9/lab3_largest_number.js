// Write a function called largestNumber that takes from an array of numbers the largest number.

function largestNumber(array) {
  var largestNumber = 0;
  for (var i = 0, len = array.length; i < len; i++) {
    if ( largestNumber < array[i]) {
      largestNumber = array[i];
    }
  }
  return largestNumber;
}

var my_array = [1,2,46,4,45,3,43454,56,4];

console.log(largestNumber(my_array));
