//Define a function
// function doubleIt(a) {
//   console.log(a*2);
// };
//
// //Call a function
// doubleIt(5);

//You must put "return"

//Excercise

function insult(name) {
  console.log(name+", you doofus!");
}

function increment(number) {
  return number+1
}

increment(2)

function doubleArray(array) {
  for (var i = 0; i < array.length; i++) {
    array[i] *= 2;
  }
  return array;
}

var array = [1,3,5,3,2,6,3]

doubleArray(array)
