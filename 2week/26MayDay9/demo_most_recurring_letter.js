// Write a function that finds the most recurring letter in a string using javascript.


var string = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."


function myFunction(words) {
  var hash = {};
  var newWords = words.split(" ").join("");
  for (var i = 0, len= newWords.length; i<len; i++) {
    var key = words[i];
    if (!hash[key]) {
      hash[key]=0;
    }

    {hash[key]++}
  }

  var maxKey = 0;

  for (var key in hash) {
    if (maxKey == "" || hash[key] > hash[maxKey]) {
      maxKey = key;
    }
  }

  console.log("maxKey:  "+hash[maxKey])
  return maxKey
}

var mostOccuringLetter = myFunction(string);

console.log("Most occuring letter is: "+mostOccuringLetter);
