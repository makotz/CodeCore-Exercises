// Write a javascript program that prompts the user for the length of the sides of a triangle and then prints out the area of the triangle.

document.addEventListener("DOMContentLoaded", function (){

var num1 = prompt("Give me a length of oneside")/1;
var num2 = prompt("Give me a length of another side")/1;
var num3 = prompt("Give me a 3rd side")/1;
var p = (num1+num2+num3)/2;
var area = Math.sqrt(p*(p-num1)*(p-num2)+(p-num3));

alert("The area of the triangle is "+ Math.round(area)+"m^2");
})
