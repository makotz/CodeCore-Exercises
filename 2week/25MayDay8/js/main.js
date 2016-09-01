document.addEventListener("DOMContentLoaded", function(){
  // var password = prompt("What's your password?");
  // var content = document.getElementById("content");
  //
  //
  // if (password.length > 12) {alert("Too long!");}
  // else if (password.length < 8) {alert("Too short!");}
  // else {alert("Just right!");}
  confirm('Do you want to enter the safe?');
  if (confirm) {
    var secretNumber = 714;
    var password = prompt('What is the password?');
      if (password == "opensesame") {
        alert("The secret number is " + secretNumber);}
        else {alert("Failed attempt");}
      }
  else {alert("OK. Goodbye then!")};

  content.innerHTML = password;
});
// var name = "Makoto"
// var a = 3
// var b = 5
// // functions
// function contentLoadedHandler() {
//   console.log("Hello, "+name+"! " + "In case you forgot, " + a +" x " + b + " is " + a*b);
//   // document.write("Good morning everyone!");
//   document.getElementById("content").innerHTML = "Hello, "+name+"! " + "In case you forgot, " + a +" x " + b + " is " + a*b;

  // alert("Hello, client!");//pop ups
  //
  // confirm("Are you at least 18 years of age?"); //confirm popups


  // var name1 = prompt("What is your name?");
  // alert("Hello " + name1 + "!");

  // var city = prompt("Please enter your city: ");
  // alert(city);
