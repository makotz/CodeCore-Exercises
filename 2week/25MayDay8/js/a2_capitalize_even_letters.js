document.addEventListener("DOMContentLoaded", function () {
  var content = document.getElementById("content")
  var input = prompt("Give me a string!")
    for (var i = 0; i < input.length; i++) {
      if (i % 2 != 0) {
      content.innerHTML += input.charAt(i).toUpperCase()
      }

      else {content.innerHTML += input.charAt(i)}
    }
});
