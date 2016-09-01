// There is no `capitalize` method for Javascript string. Write a function that capitalizes a given string.
document.addEventListener("DOMContentLoaded", function() {
var content = document.getElementById("content");
var title = prompt("Give me a title!");
var each = title.split(' ');
for (i = 0; i < each.length; i++ ) {
  if (each[i] == "the" || each[i] == "of") {
    content.innerHTML += each[i] + " "
  }
  else {
    var word = each[i].charAt(0).toUpperCase() + each[i].substr(1)
    content.innerHTML += word + " "
    }
  };
})
