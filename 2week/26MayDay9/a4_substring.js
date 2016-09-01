// Write a JavaScript program which returns a subset of a string.
// Sample Data : dog
// Expected Output : ["d", "do", "dog", "o", "og", "g"]

function dog(spread) {
  var newDog = spread.split('')
  // console.log(newDog)
  // newDog.shift()
  // console.log(newDog)
  // d = newDog.join('')
  // console.log(d)
  while (newDog.length >= 1) {
  for (i=0; i < newDog.length; i++) {
    console.log(newDog[i])
    }
  newDog.shift()
  console.log(newDog)
  newDog = newDog.join('')
  dog(newDog)
  }
}



dog("dog")


function substrings(string) {
 var result = [];
 for (i=0; i < string.length; i++) {
   for (j=i; j < string.length; j++) {
     result.push(string.slice(i, j+1));
   }
 }
 return result;
}

console.log(substrings("swan"));
