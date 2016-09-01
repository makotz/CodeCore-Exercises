var net = require('net');

var readline = require("readline"); // requiring the readline module

var rl = readline.createInterface({
  input:  process.stdin,
  output: process.stdout
});

rl.question("What is your name?", function(string){
  console.log("Hello " + string);
  process.exit()
});

var client = net.Socket();

client.on("data", function (data) {
  console.log("Data recieved from server: " + data);
});

client.connect(5000, "127.0.0.1", function(){
  rl.question("What is your name?", function(string){
  client.write(string);
  });
});
