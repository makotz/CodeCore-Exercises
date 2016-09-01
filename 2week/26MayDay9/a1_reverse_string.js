// There is no method in Javascript to reverse a string. Write a function that takes in a string and returns another string with the characters in the reverse order. Is it possible to modify the string itself instead of returning a copy of the original string? Why or why not?


function reverse(string){
  var array = string.split('')
  var new_array = []
  for (var i = array.length-1; i >= 0; i --) {
    new_array.push(array[i])
  }
  console.log(new_array.join(''))
}

var string = "Hello"

reverse(string)
