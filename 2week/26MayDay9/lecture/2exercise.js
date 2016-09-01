// function logs(name, age) {
//   console.log(name+" is "+age+" years old.")
// }
//
// name = "Makoto"
// age = 21
//
// logs(name, age)
//
//
var sentence = "Hello World"

function wordLengths(sentence) {
  var obj = {}
  var array = sentence.split(" ")
  for (var i = 0; i < array.length; i++) {
    obj[array[i]] = array[i].length
  }
  console.log(obj)
}

wordLengths(sentence)
