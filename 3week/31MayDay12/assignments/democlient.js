var readline = require('readline'); // requiring the readline module
var net = require('net')

var PORT = 8080;
var IP = "127.0.0.1";

var rl = readline.createInterface({
  input:  process.stdin,
  output: process.stdout
});

var socket = net.connect(PORT);

socket.on('data', function (data) {
  console.log("Server sent: "+data.toString())
});

rl.question("Choose a word to capitalize: ", function(answer){
  console.log("Thank you for your valuable feedback: ", answer);
  socket.write(answer);
  socket.end();
  // client.exit();
  process.exit();
});
