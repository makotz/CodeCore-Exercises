// Write a JavaScript program where the program takes a random integer between 1 and 100, the user is then prompted to input a guess number. If the users input matches with the random integer, the program will display a message "Good Work" otherwise display your number is higher or lower and prompts the user to enter another number. At the end, when the user finally guesses the number it will display: "Good Work. You guessed in X attempts".

document.addEventListener("DOMContentLoaded", function(){
  var content = document.getElementById("content")

  var randomNumber = Math.round(Math.random()*100)
  var UserGuess = (prompt("Guess me a number!"))
  var counter = 0

  while (randomNumber != UserGuess/1 || UserGuess == "quit") {
    if (randomNumber > UserGuess) {
    content.innerHTML += "Nope, higher than " + UserGuess + "<br>"
    var UserGuess = (prompt("Guess me a number!")/1)
    counter += 1
    }
  else {
    content.innerHTML += "Nope, lower than " + UserGuess + "<br>"
    var UserGuess = (prompt("Guess me a number!")/1)
    counter += 1
    }
  }
  if (randomNumber == UserGuess) {
    content.innerHTML += "Good Work!<br>It took you "+counter+" tries."
  }

})
