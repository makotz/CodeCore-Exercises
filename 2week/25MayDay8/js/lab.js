// Write a Javascript code the prompts the user for three numbers and returns the largest of the three numbers printing: "The largest number is X"

document.addEventListener("DOMContentLoaded", function (){

var num1 = prompt("Give me a number");
var num2 = prompt("Give me a 2nd number");
var num3 = prompt("Give me 3rd number");

if ((num1 > num2) && (num1 > num3)) {alert("The largest number is "+num1)}
else if ((num2 > num1) && (num2 > num3)) {alert("The largest number is "+num2)}
else {alert("The largest number is "+num3)}
})
