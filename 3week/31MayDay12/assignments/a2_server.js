var net = require('net');

var PORT = 8080;
var HOST = '127.0.0.1';

var server = net.createServer(function (socket) {
  var rando = Math.floor(Math.random()*100);
  var counter = 1
    console.log("The client must guess this number: "+rando);
    socket.on('data', function (guess) {
      guessnum = Number(guess.toString())
      console.log("Client says: "+guessnum);
    if (rando > guessnum) {
      socket.write("higher!");
      counter += 1;
    } else if (rando < guessnum) {
      socket.write("lower!");
      counter += 1;
    } else {
      socket.write("Correct! You guessed right in "+counter+" attempt(s)!");
    };
  });
});

server.listen(PORT, HOST);
console.log("Server listening on "+HOST+": "+PORT+"...");

//////////////////////////////////////////////////////////////////////////////
//Lyn


// var net = require("net");
//
// var PORT = 8080;
// var IP = "127.0.0.1";
//
// console.log("Server started on " + IP + PORT);
//
//
//
//
// var server = net.createServer(function(socket) {
//  var NUMBER = Math.floor(Math.random()*100);
//  var counter = 0;
//
//  socket.on("data", function(data) { //socket.on("data", ) --> socket is looking for "data" in client.js and grap it and put it into function(data)//
//    // console.log("Client says: " + data.toString());
//    var new_data = Number(data);
//    console.log("I received this data: "+ new_data);
//    if (new_data == NUMBER) {
//      socket.write("You guessed right in " + counter + " attempts" );
//    } else if (new_data > NUMBER) {
//      socket.write("Guess lower");
//      counter +=1;
//    } else if (new_data < NUMBER) {
//      socket.write("Guess higher");
//      counter +=1;
//    }
//
//  });
//
// });
//
// server.listen(PORT, IP);
