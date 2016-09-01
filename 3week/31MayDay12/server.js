var net = require("net"); // Node module that helps us create TCP server
var server = net.createServer(function(socket){
  socket.on("data", function(data){
    console.log("Data receieved: "+ data);
    socket.write("Got it!");
  })
});

server.listen(5000, "127.0.0.1");
console.log("Server is running on IP address 127.0.0..1 and Port 5000")

// var readline = require("readline"); // requiring the readline module
//
// var rl = readline.createInterface({
//   input:  process.stdin,
//   output: process.stdout
// });
//
// rl.question("What is your name?", function(string){
//   console.log("Hello " + string);
//   process.exit()
// });
