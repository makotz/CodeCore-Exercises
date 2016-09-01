var readline = require('readline')
var net = require('net')

var PORT = 8080
var HOST = '127.0.0.1'

var rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

var socket = net.createConnection(PORT, HOST)

rl.question('What is your guess?', function (guess) {
    socket.write(guess)
  })

socket.on('data', function (feedback) {
  console.log(feedback.toString())

if (feedback.toString() == "higher!" || feedback.toString() == "lower!" ) {
  rl.question('What is your guess?', function (guess) {
      socket.write(guess)
  })
  } else {
  socket.end()
  }
})

///////////////////////////////////////////////////////////////////////
// Lyn



// /Client//
//
// var readline = require("readline");
// var net = require("net");
//
// var PORT = 8080;
//
// var rl = readline.createInterface({
//  input:  process.stdin,
//  output: process.stdout
// });
//
// //() => {}  =  function(){}
//
// var socket = net.createConnection(PORT);
//
// socket.on("data", function(data) {
//  console.log("Server sent: " + data.toString());
//  // if (data.toString().include('higher') || data.toString().include('lower'))
//  //   rl.question("Enter a number: ", function(answer) {
//  //     socket.write(answer);
//  //   }
// });
//
// var loop = function() {
//  rl.question("Enter a number: ", function(answer) {
//    if (answer != "exit") {
//      socket.write(answer);
//      loop();
//    } else {
//      socket.end();
//      return rl.close();
//    }
//  });
// }
//
// loop();
