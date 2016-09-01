// Write a Javascript code that prompts the user for their score (0 - 100) on the exam and then prints out their letter grade (F - A+).
//
// Stretch: Make the program prompts the user to enter the score again if the it's more than a 100 or less than 0.'

document.addEventListener("DOMContentLoaded", function (){

var grade = prompt("Give me a score from 1 to 100")/1

while  (grade > 100 || grade < 0) {var grade = prompt("Enter a valid score, don't be shy")};

  if (85 <= grade) {alert("You got an A+!")}
  else if (82 <= grade) {alert("You got an A!")}
  else if (80 <= grade) {alert("You got an A-!")}
  else if (77 <= grade) {alert("You got an B+!")}
  else if (73 <= grade) {alert("You got an B!")}
  else if (70 <= grade) {alert("You got an B-!")}
  else if (67 <= grade) {alert("You got an C+!")}
  else if (63 <= grade) {alert("You got an C!")}
  else if (60 <= grade) {alert("You got an C-!")}
  else if (57 <= grade) {alert("You got an D+!")}
  else if (53 <= grade) {alert("You got an D!")}
  else if (50 <= grade) {alert("You got an D-!")}
  else {alert("You got an F! :(")}

});
